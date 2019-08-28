package com.webtoon.analysis;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.webtoon.service.KeywordService;
import com.webtoon.service.MemberService;
import com.webtoon.service.SentimentService;
import com.webtoon.service.SummaryKeywordService;
import com.webtoon.service.SummaryService;
import com.webtoon.service.TwitterService;
import com.webtoon.vo.KeywordVO;
import com.webtoon.vo.MemberVO;
import com.webtoon.vo.SentimentVO;
import com.webtoon.vo.SummaryKeywordVO;
import com.webtoon.vo.SummaryVO;
import com.webtoon.vo.TwitterVO;

 
/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController {
    
    @Autowired
    MemberService service;
    
    @Autowired
    SummaryService summaryService;
    
    @Autowired
    SummaryKeywordService summaryKeywordService;
    
    @Autowired
    KeywordService keywordService;
    
    @Autowired
    SentimentService sentimentService;
    
    @Autowired
    TwitterService twitterService;
    
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
    
    /**
     * Simply selects the home view to render by returning its name.
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model) throws Exception{
 
		
		 logger.info("index");
		 
		 List<MemberVO> memberList = service.selectMember();
		 model.addAttribute("memberList", memberList);
		 
 
        return "main";
    }
    
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) throws Exception{
    	
    	List<MemberVO> memberList = service.selectMember();
        model.addAttribute("memberList", memberList);
        
        List<KeywordVO> keywordList = keywordService.selectKeyword();
        model.addAttribute("keywordList", keywordList);
        
        //List<MemberVO> list = new ArrayList<MemberVO>();
        //System.out.println("list>>>>>>>>"+list);
 
        return "index";
    }
    
	/*
	 * // ajax용 index
	 * 
	 * @RequestMapping(value = "/index", method = RequestMethod.POST)
	 * 
	 * @ResponseBody public Map<String, Object> indexdata(Model model) throws
	 * Exception{
	 * 
	 * // 원래 쓰던 형식 //List<KeywordVO> keywordList = keywordService.selectKeyword();
	 * //model.addAttribute("keywordList", keywordList);
	 * 
	 * List<KeywordVO> keywordList = keywordService.selectKeyword(); Map<String,
	 * Object> data = new HashMap<String, Object>(); data.put("data", keywordList);
	 * 
	 * return data; }
	 */
    
    @RequestMapping(value = "/episode", method = RequestMethod.GET)
    public String epsidoe(Model model) throws Exception{
    	
    	List<MemberVO> memberList = service.selectMember();
    	model.addAttribute("memberList", memberList);
    	
    	List<SummaryVO> summaryList = summaryService.selectSummary();
    	model.addAttribute("summaryList", summaryList);
    	
    	List<SummaryKeywordVO> summaryKeywordList = summaryKeywordService.selectSummaryKeyword();
    	model.addAttribute("summaryKeywordList", summaryKeywordList);
        
        List<KeywordVO> keywordList = keywordService.selectKeyword();
        model.addAttribute("keywordList", keywordList);
        
        List<SentimentVO> sentimentList = sentimentService.selectSentiment();
        model.addAttribute("sentimentList", sentimentList);
 
        return "episode";
    }
    
    @RequestMapping(value = "/romance", method = RequestMethod.GET)
    public String romance(Model model) throws Exception{
    	
    	List<MemberVO> memberList = service.selectMember();
        model.addAttribute("memberList", memberList);
 
        return "romance";
    }
    
    
    @RequestMapping(value = "/otherIndex", method = RequestMethod.GET)
    public String otherIndex(Locale locale, Model model, HttpServletRequest request) throws Exception{
    	
    	String selectedToon = request.getParameter("selectedToon");
    	model.addAttribute("selectedToon", selectedToon);
    	
    	List<MemberVO> memberList = service.selectMember();
        model.addAttribute("memberList", memberList);
        
        List<KeywordVO> keywordList = keywordService.selectKeyword();
        model.addAttribute("keywordList", keywordList);
        
        List<SentimentVO> sentimentList = sentimentService.selectSentiment();
        model.addAttribute("sentimentList", sentimentList);
 
        return "otherIndex";
    }
    
    @RequestMapping(value = "/otherEpisode", method = RequestMethod.GET)
    public String otherToonEpisode(Locale locale, Model model, HttpServletRequest request) throws Exception{
    	
    	String selectedToon = request.getParameter("selectedToon");
    	model.addAttribute("selectedToon", selectedToon);
    	String episode = request.getParameter("episode");
    	model.addAttribute("episode", episode);
    	
    	List<MemberVO> memberList = service.selectMember();
    	model.addAttribute("memberList", memberList);
    	
    	List<SummaryVO> summaryList = summaryService.selectSummary();
    	model.addAttribute("summaryList", summaryList);
    	
    	List<SummaryKeywordVO> summaryKeywordList = summaryKeywordService.selectSummaryKeyword();
    	model.addAttribute("summaryKeywordList", summaryKeywordList);
        
        List<SentimentVO> sentimentList = sentimentService.selectSentiment();
        model.addAttribute("sentimentList", sentimentList);
        
        List<TwitterVO> twitterList = twitterService.selectTwitter();
        model.addAttribute("twitterList",twitterList);
        
        List<KeywordVO> keywordList = keywordService.selectKeyword();
        model.addAttribute("keywordList", keywordList);
 
        return "otherEpisode";
    }
    
    /*
	 * @RequestMapping(value = "/search", method = RequestMethod.GET) public String
	 * search(Locale locale, Model model, HttpServletRequest request) throws
	 * Exception{
	 * 
	 * String searchedTitle = request.getParameter("searchedTitle"); //�Ķ���� ��
	 * model.addAttribute("searchedTitle", searchedTitle);
	 * 
	 * List<MemberVO> memberList = service.selectMember();
	 * model.addAttribute("memberList", memberList);
	 * 
	 * return "search";
	 * 
	 * 
	 * 
	 * }
	 */
    
//    @RequestMapping(value = "/search", method = RequestMethod.GET)
//    public String search(@RequestParam("searchedTitle") String searchedTitle, ModelMap modelMap) throws Exception{
//    	
//    	modelMap.addAttribute("searchedTitle", searchedTitle);
//
//		return "search";
//		
//
//    }
    
	/*
	 * @RequestMapping(value = "/selectWebtoon", method = RequestMethod.GET) public
	 * ModelAndView selectWebtoon(HttpServletRequest request) throws Exception{
	 * 
	 * String selectedtitle = request.getParameter("selectedtitle"); 
	 * ModelAndView mav = new ModelAndView(); 
	 * Map<String, Object> map = new HashMap<String,Object>(); 
	 * map.put("selectedtitle", selectedtitle); mav.addObject("map", map); 
	 * mav.setViewName("selectWebtoon"); return mav; }
	 */
    
}

