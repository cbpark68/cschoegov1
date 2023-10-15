package main.service;

public class BoardVO {
	private int unq;
	private String title;
	private String pass;
	private String name;
	private String content;
	private int hits;
	private String rdate;
	private int viewPg = 1;
	private int beginIdx = 1;
	private int endIdx = 5;

	private String searchGbn;
	private String searchText = "";

	public String getSearchGbn() {
		return searchGbn;
	}

	public void setSearchGbn(String searchGbn) {
		this.searchGbn = searchGbn;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public int getBeginIdx() {
		return beginIdx;
	}

	public void setBeginIdx(int beginIdx) {
		this.beginIdx = beginIdx;
	}

	public int getEndIdx() {
		return endIdx;
	}

	public void setEndIdx(int endIdx) {
		this.endIdx = endIdx;
	}

	public int getUnq() {
		return unq;
	}

	public void setUnq(int unq) {
		this.unq = unq;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public int getViewPg() {
		return viewPg;
	}

	public void setViewPg(int viewPg) {
		this.viewPg = viewPg;
	}

}
