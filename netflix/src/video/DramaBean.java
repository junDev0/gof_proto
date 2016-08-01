package video;

import global.VideoBean;

/**
 * @date   :2016. 7. 26.
 * @author :HyunWoo Lee
 * @file   :Drama.java
 * @story  :
*/

public class DramaBean extends VideoBean{
	private int season,episode,groupNo;
	private String subTitle;
	
	public int getSeason() {
		return season;
	}
	public void setSeason(int season) {
		this.season = season;
	}
	public int getEpisode() {
		return episode;
	}
	public void setEpisode(int episode) {
		this.episode = episode;
	}
	public String getSubTitle() {
		return subTitle;
	}
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	public int getGroupNo() {
		return groupNo;
	}
	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}
}
