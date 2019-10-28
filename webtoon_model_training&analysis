import pandas as pd
import math
from konlpy.tag import Twitter
from konlpy.tag import Okt
from collections import Counter
import gensim
from gensim.models import Word2Vec
def isNaN(num):
    return num != num

def read_file(file_path):
    comments = pd.read_csv(file_path,engine='python')

    comment_list = []
    recomm_list = []
    unrecomm_list = []
    year_list = []

    for i in range(len(comments)):
        comment_list.append(comments['댓글'][i])

    for i in range(len(comments)):
        recomm_list.append(comments['좋아요'][i])

    for i in range(len(comments)):
        unrecomm_list.append(comments['싫어요'][i])

    for i in range(len(comments)):
        year_list.append(comments['날짜'][i])


    dict_comment = {"댓글": comment_list, "좋아요": recomm_list, "싫어요": unrecomm_list, "날짜": year_list}
    df_comment = pd.DataFrame(dict([(k, pd.Series(v)) for k, v in dict_comment.items()]))
    df_comment = df_comment.dropna(axis=0)

    return df_comment

def remove_none_nan(df_comment):

    df = pd.DataFrame(columns=['댓글'])

    df2 = df_comment['댓글'].dropna()
    df2 = df2.reset_index(drop=True)

    for i in range(len(df2)):
        if df2[i] is None:
            continue
        df.loc[i]=df2[i]
    return df

def remove_none_nan2(df_comment):

    df = pd.DataFrame(columns=['제목','회차','작가','별점','등록일','댓글','좋아요','싫어요','날짜','총 댓글수'])

    df2 = df_comment.dropna()
    df2 = df2.reset_index(drop=True)

    for i in range(len(df2)):
        if df2['댓글'][i] is None:
            continue
        df.loc[i]=df2.loc[i]
    return df



def pos_tagging(df_comment):

    twitter = Twitter()
    sentences_tag = []
    df2 = df_comment['댓글'].dropna()
    df2 = df2.reset_index(drop=True)
    for sentence in df2:
        if sentence is None:
            continue
        print('문장:', sentence)
        print('dtype:', type(sentence))
        morph = twitter.pos(sentence)
        print('형태소:', morph)
        sentences_tag.append(morph)

    noun_adj_list = []
    for sentence1 in sentences_tag:
        for word, tag in sentence1:
            if tag in ['Noun', 'Adjective']:
                noun_adj_list.append(word)

    counts = Counter(noun_adj_list)
    # print(counts.most_common(10))
    count = counts.most_common()

    return count

def make_list(count):

    pos_list = []
    num_list = []
    for pos, num in count:
        pos_list.append(pos)
        num_list.append(num)

    print(pos_list)
    print(num_list)
    return pos_list, num_list

def load_remove_stopwords(file_path,pos_list,num_list):
    #file_path = './stopword5.csv'
    df = pd.read_csv(file_path, encoding='CP949', dtype=str)
    df_stopwords = df.drop(['Unnamed: 1'], axis=1)

    pos_list_stop = pos_list[:]
    num_list_stop = []
    delete_index = []

    for i in range(len(pos_list)):
        for j in range(len(df_stopwords['stopwords'])):
            if pos_list[i] == df_stopwords['stopwords'][j]:
                pos_list_stop.remove(pos_list[i])
                delete_index.append(i)

    for i in range(len(num_list)):
        if i not in delete_index:
            num_list_stop.append(num_list[i])

    print(pos_list_stop)
    print(num_list_stop)

    return pos_list_stop,num_list_stop


def search_word(search,df_comment):

    df_writer = pd.DataFrame(columns=['댓글'])
    # writer.extend(list(df_info['작가']))
    # app = list(df_info['작가'])[0]
    # writer.append(app + '님')
    index = 0
    for i in range(len(df_comment['댓글'])):
        #print(df_comment.loc[i])
        for j in range(len(search)):
            print(search[j])
            if search[j] in df_comment['댓글'].loc[i]:
                df_writer.loc[index] = df_comment['댓글'].loc[i]
                index = index + 1
                print(df_comment['댓글'].loc[i])
                print()

    df_writer = df_writer.reset_index(drop=True)

    return df_writer

def remove_certain_word(certain,pos_list,num_list):
    
    #certain = ['작가', '님']
    delete_index = []
    pos_list_stop = pos_list[:]
    num_list_stop = num_list[:]

    for i in range(len(pos_list)):
        for j in range(len(certain)):
            if pos_list[i] == certain[j]:
                pos_list_stop.remove(pos_list[i])
                delete_index.append(i)

    for i in range(len(num_list)):
        if i not in delete_index:
            num_list_stop.append(num_list[i])

    print(pos_list_stop)
    print(num_list_stop)
    
    return pos_list_stop,num_list_stop

def tokenize(doc):

    pos_tagger = Twitter()
    # tap 기준으로 list -> string
    t= pos_tagger.pos(doc, norm=True, stem=True)
    print(t)
    return ['/'.join(t) for t in pos_tagger.pos(doc, norm=True, stem=True)]


def writer_Word2vec(remove_writer_pos):
    model = Word2Vec.load('Word2vec.model.snow')
    # print(model.most_similar('작가/Noun',topn = 100))
    twitter = Twitter()
    word_with_pos_array = []
    for word in remove_writer_pos:
        print(word)
        word_with_pos = word + '/' + twitter.pos(word)[0][1]
        # print(word_with_pos)
        word_with_pos_array.append(word_with_pos)
    # print(word_with_pos_array)

    rank2 = []
    for word in word_with_pos_array[:10]:
        ranking = model.most_similar(word, topn=10)
        rank = []
        for word2 in ranking:
            rank.append(word2[0].split('/')[0])
        rank2.append(rank)
    return word_with_pos_array, rank2

def money_webtoon(df_comments):
    df = pd.DataFrame(columns=['제목','회차','작가','별점','등록일','댓글','좋아요','싫어요','날짜','총 댓글수'])
    for i in range(len(df_comments)):
        if(int(df_comments['등록일'][i])<int(df_comments['날짜'][i])):
            print(df_comments['댓글'][i])
            df.loc[i] = df_comments.loc[i]

    return df
#file_path = "./연애혁명.csv"
file_path = "./snow_webtoon.csv"
#file_path = "./유료독자.csv"
df_comments = pd.read_csv(file_path,engine='python')
#df_comments= money_webtoon(df_comments)
#webtoon_title = df_comments['제목'][0]     #웹툰 제목
#webtoon_writer = df_comments['작가'][0]    #웹툰 작가

###단어 빈도수###----------------------------------------------------------------------------------
#
# count= pos_tagging(df_comments)
# print(count)
# pos_list,num_list = make_list(count)
file_stopwords_path = 'stopword5.csv'
# pos_list_stop,num_list_stop = load_remove_stopwords(file_stopwords_path,pos_list,num_list)
# print(pos_list_stop)
# print(num_list_stop)
# #certain = ['입니다']
# #remove_writer_pos,remove_writer_num = remove_certain_word(certain,pos_list_stop,num_list_stop)
# word_with_pos_array,rank = writer_Word2vec(pos_list_stop)
# # print(r)
# # print(remove_writer_num)
# print(word_with_pos_array)
# print(rank)
#
# data = {"단어":pos_list_stop[:10],
#         "빈도수":num_list_stop[:10],
#         "관련단어1":rank[:10][0],
#         "관련단어2":rank[:10][1],
#         "관련단어3":rank[:10][2],
#         "관련단어4":rank[:10][3],
#         "관련단어5":rank[:10][4],
#         "관련단어6":rank[:10][5],
#         "관련단어7":rank[:10][6],
#         "관련단어8":rank[:10][7],
#         "관련단어9":rank[:10][8],
#         "관련단어10":rank[:10][9],
#         "구분":["빈도수"]*10
#          }
#
# print(data)
# df = pd.DataFrame(data)
# df.to_csv("test_1.csv",encoding="utf-8-sig",index=False)

###작가 관련 단어###-----------------------------------------------------------------------------------------------------
#df2는 none,nan값이 정제된 댓글
# writer = ['작가']
# df_writer = search_word(writer,df_comments)
# count= pos_tagging(df_writer)
# pos_list,num_list = make_list(count)
# pos_list_stop,num_list_stop = load_remove_stopwords(file_stopwords_path,pos_list,num_list)
# certain = ['작가','님','웹툰','거','말','더','체','그냥','뭐','안','화','네이버','만화']
# #certain.extend([webtoon_writer,webtoon_writer[1:]])
# remove_writer_pos,remove_writer_num = remove_certain_word(certain,pos_list_stop,num_list_stop)
# print(remove_writer_pos)
# print(remove_writer_num)
# word_with_pos_array,rank = writer_Word2vec(remove_writer_pos)
# print(word_with_pos_array)
# print(rank)
#
# data = {"단어":remove_writer_pos[:10],
#         "빈도수":remove_writer_num[:10],
#         "관련단어1":rank[:10][0],
#         "관련단어2":rank[:10][1],
#         "관련단어3":rank[:10][2],
#         "관련단어4":rank[:10][3],
#         "관련단어5":rank[:10][4],
#         "관련단어6":rank[:10][5],
#         "관련단어7":rank[:10][6],
#         "관련단어8":rank[:10][7],
#         "관련단어9":rank[:10][8],
#         "관련단어10":rank[:10][9],
#         "구분":["작가"]*10
#          }
#
# print(data)
# df = pd.DataFrame(data)
# df.to_csv("snow_2.csv",encoding="utf-8-sig",index=False)

#-----------------------------------------------------------------------------------------------------------

df_comment = pd.DataFrame(columns=['댓글'])
# # #print(df_comment['댓글'][:10])
# # #print(df_comments['댓글'])
df_comment['댓글'] = df_comments['댓글']
# # df_comment.to_csv("word.csv",encoding="utf-8-sig",index=False)
df_comment_list = df_comment.values.tolist()
#
# #print("뭐지",len(df_comment_list))
# #print(df_comment_list)
# # # #
# # # # # twitter = Twitter()
web_tokens = [tokenize(row[0]) for row in df_comment_list]
print(web_tokens)

# for row in df_comment_list:
#     print(row[0])
# print(row[0] for row in df_comment_list)

#
#model = gensim.models.Word2Vec(sentences=web_tokens,size=300,sg = 1, alpha=0.025,min_alpha=0.025, seed=1234,iter=20)
model = gensim.models.Word2Vec(sentences=web_tokens,size=100,sg = 0,window=5,min_count=0,workers=4 )
#model.build_vocab(web_tokens)
#model.train(web_tokens,total_examples=model.corpus_count,epochs = model.iter)
#print("훈련 끝")
model.save('Word2vec.model.lowtop3')
#model = Word2Vec.load('Word2vec.model.snow')
#print(model.wv.most_similar('진짜/Noun',topn=100))  ## topn = len(model.wv.vocab)

# df_comment_remove.to_csv("webtoon_data_remove_none.csv",encoding="utf-8-sig",index=False)
# certain = ['작가','님']
# remove_writer_pos,remove_writer_num = remove_certain_word(certain,pos_list_stop,num_list_stop)
# print(remove_writer_pos)
# print(remove_writer_num)
# writer.extend([webtoon_writer[1:]])
# print(writer)
# print(len(webtoon))
#df_comment_remove = remove_none_nan(webtoon)
# df_comment_remove.to_csv("webtoon_data4.csv",encoding="utf-8-sig",index=False)
#print(df_comment_remove)
# df_writer = search_word(writer,df_comment_remove)
# #print(df_writer)
# count= pos_tagging(df_writer)
# #print(count)
# pos_list,num_list = make_list(count)
# #print(pos_list)
# #print(num_list)
# pos_list_stop,num_list_stop = load_remove_stopwords(file_stopwords_path,pos_list,num_list)
#print(pos_list_stop)
#print(num_list_stop)
# certain = ['작가','님']
# certain.extend([webtoon_writer,webtoon_writer[1:]])
# remove_writer_pos,remove_writer_num = remove_certain_word(certain,pos_list_stop,num_list_stop)
# print(remove_writer_pos)
# print(remove_writer_num)

##작품 관련 단어##------------------------------------------------------------------------------------
# title = ['작품','그림','스토리','웹툰','그림체','띵작','명작','레전드','정주행','신체비율','반전','복선','이번','화','쿠키','별','점','고구마','사이다','병맛'
#         ,'개연성','막장','산','설정','세계관','전개','만화','결말','재미','존잼','연재','흐름','소름','로맨틱','드라마틱','감정선','시나리오','약','도핑테스트','플롯','퀄리티','혜자','분량','창렬','개노','잼']
# df_master = search_word(title,df_comments)
# #print(df_master)
# count = pos_tagging(df_master)
# pos_list,num_list = make_list(count)
# pos_list_stop,num_list_stop = load_remove_stopwords(file_stopwords_path,pos_list,num_list)
# # #title.extend(['작가','님','웹툰','거','말','더','체','그냥','뭐','안','화','네이버','만화'])
# # #print(title)
# remove_writer_pos,remove_writer_num = remove_certain_word(title,pos_list_stop,num_list_stop)
# print(remove_writer_pos)
# print(remove_writer_num)
# certain = ['작가','체','거','진짜','더','뭐','그냥','네이버','댓글','컷','안','정도','같아요']
# remove_writer_pos,remove_writer_num = remove_certain_word(certain,remove_writer_pos,remove_writer_num)
# print(remove_writer_pos)
# print(remove_writer_num)
# word_with_pos_array,rank = writer_Word2vec(remove_writer_pos)
# print(word_with_pos_array)
# print(rank)
#
# data = {"단어":remove_writer_pos[:10],
#         "빈도수":remove_writer_num[:10],
#         "관련단어1":rank[:10][0],
#         "관련단어2":rank[:10][1],
#         "관련단어3":rank[:10][2],
#         "관련단어4":rank[:10][3],
#         "관련단어5":rank[:10][4],
#         "관련단어6":rank[:10][5],
#         "관련단어7":rank[:10][6],
#         "관련단어8":rank[:10][7],
#         "관련단어9":rank[:10][8],
#         "관련단어10":rank[:10][9],
#         "구분":["작품"]*10
#          }
#
# print(data)
# df = pd.DataFrame(data)
# df.to_csv("snow_3.csv",encoding="utf-8-sig",index=False)


##구독취소 관련단어##
# give_up_subscribe = ['암','구독','안보','고구마','발암','취소','답답','반복','막장','1점','관둔','때려','친']
# df_subscribe = search_word(give_up_subscribe,df_comments)
# count = pos_tagging(df_subscribe)
# pos_list,num_list = make_list(count)
# pos_list_stop,num_list_stop = load_remove_stopwords(file_stopwords_path,pos_list,num_list)
# remove_sub_pos,remove_sub_num = remove_certain_word(give_up_subscribe,pos_list_stop,num_list_stop)
# word_with_pos_array,rank = writer_Word2vec(remove_sub_pos)
# print(word_with_pos_array)
# print(rank)
# print(remove_sub_pos)
# print(remove_sub_num)
#
# data = {"단어":remove_sub_pos[:10],
#         "빈도수":remove_sub_num[:10],
#         "관련단어1":rank[:10][0],
#         "관련단어2":rank[:10][1],
#         "관련단어3":rank[:10][2],
#         "관련단어4":rank[:10][3],
#         "관련단어5":rank[:10][4],
#         "관련단어6":rank[:10][5],
#         "관련단어7":rank[:10][6],
#         "관련단어8":rank[:10][7],
#         "관련단어9":rank[:10][8],
#         "관련단어10":rank[:10][9],
#         "구분":["구독취소"]*10
#          }
#
# print(data)
# df = pd.DataFrame(data)
# df.to_csv("snow_4.csv",encoding="utf-8-sig",index=False)



#유료독자----------------------------------------------------------------------------------------------------------------


#df = money_webtoon(df_comments)
#df.to_csv("유료독자.csv",encoding="utf-8-sig",index=False)
# df_comments= pd.read_csv('유료독자.csv')
# print(df_comments[:10])
#
title = ['쿠키']
df_master = search_word(title,df_comments)
print(df_master)
count = pos_tagging(df_comments)
pos_list,num_list = make_list(count)
pos_list_stop,num_list_stop = load_remove_stopwords(file_stopwords_path,pos_list,num_list)
print(pos_list_stop)
print(num_list_stop)
#title.extend(['작가','님','웹툰','거','말','더','체','그냥','뭐','안','화','네이버','만화'])
#print(title)
remove_writer_pos,remove_writer_num = remove_certain_word(title,pos_list_stop,num_list_stop)
print(remove_writer_pos)
print(remove_writer_num)
#certain = ['작가','체','거','진짜','더','뭐','그냥','네이버','댓글','컷','안','정도','같아요','입니다']
#remove_writer_pos,remove_writer_num = remove_certain_word(certain,pos_list_stop,num_list_stop)
#remove_writer_pos,remove_writer_num = remove_certain_word(certain,pos_list_stop,remove_writer_num)
#print(remove_writer_pos)
#print(remove_writer_num)

word_with_pos_array,rank = writer_Word2vec(remove_writer_pos)
print(word_with_pos_array)
print(rank)
#
data = {"단어":remove_writer_pos[:10],
        "빈도수":remove_writer_num[:10],
        "관련단어1":rank[:10][0],
        "관련단어2":rank[:10][1],
        "관련단어3":rank[:10][2],
        "관련단어4":rank[:10][3],
        "관련단어5":rank[:10][4],
        "관련단어6":rank[:10][5],
        "관련단어7":rank[:10][6],
        "관련단어8":rank[:10][7],
        "관련단어9":rank[:10][8],
        "관련단어10":rank[:10][9],
        "구분":["유료독자"]*10
         }

print(data)
df = pd.DataFrame(data)
df.to_csv("snow_success.csv",encoding="utf-8-sig",index=False)

# #if(df_comments['회차']=="1화")
# snow_one = df_comments.loc[df_comments['회차']=='1화']
# snow_one.to_csv("8월의 눈보라_1화.csv",encoding="utf-8-sig",index=False)

# df1 = pd.read_csv("data_1.csv")
# df2 = pd.read_csv("data_2.csv")
# df3 = pd.read_csv("data_3.csv")
# df4 = pd.read_csv("data_4.csv")
# df5 = pd.read_csv("data_5.csv")
#
# df_snow = pd.concat([df1,df2,df3,df4,df5])
# df_snow = df_snow.reset_index(drop=True)
# df_snow.to_csv("snow_all_analysis.csv",encoding="utf-8-sig",index=False)
#

