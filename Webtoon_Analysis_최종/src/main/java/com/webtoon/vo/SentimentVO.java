package com.webtoon.vo;

public class SentimentVO {
	
	private String title;
	private int episode;
	private int positive;
	private int med;
	private int negative;
	private int positive_percent;
	private int med_percent;
	private int negative_percent;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getEpisode() {
		return episode;
	}
	public void setEpisode(int episode) {
		this.episode = episode;
	}
	public int getPositive() {
		return positive;
	}
	public void setPositive(int positive) {
		this.positive = positive;
	}
	public int getMed() {
		return med;
	}
	public void setMed(int med) {
		this.med = med;
	}
	public int getNegative() {
		return negative;
	}
	public void setNegative(int negative) {
		this.negative = negative;
	}
	public int getPositive_percent() {
		return positive_percent;
	}
	public void setPositive_percent(int positive_percent) {
		this.positive_percent = positive_percent;
	}
	public int getMed_percent() {
		return med_percent;
	}
	public void setMed_percent(int med_percent) {
		this.med_percent = med_percent;
	}
	public int getNegative_percent() {
		return negative_percent;
	}
	public void setNegative_percent(int negative_percent) {
		this.negative_percent = negative_percent;
	}
	
	

}
