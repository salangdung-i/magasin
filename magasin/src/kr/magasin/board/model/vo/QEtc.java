package kr.magasin.board.model.vo;

import java.sql.Date;

public class QEtc {
	private int qNo;
	private String qCtgr;
	private String qTitle;
	private String qWriter;
	private String qCont;
	private Date qDate;
	private int qIsA;
	private String qFilename;
	private String qFilepath;
	public QEtc() {
		super();
		// TODO Auto-generated constructor stub
	}
	public QEtc(int qNo, String qCtgr, String qTitle, String qWriter, String qCont, Date qDate, int qIsA,
			String qFilename, String qFilepath) {
		super();
		this.qNo = qNo;
		this.qCtgr = qCtgr;
		this.qTitle = qTitle;
		this.qWriter = qWriter;
		this.qCont = qCont;
		this.qDate = qDate;
		this.qIsA = qIsA;
		this.qFilename = qFilename;
		this.qFilepath = qFilepath;
	}
	public int getqNo() {
		return qNo;
	}
	public void setqNo(int qNo) {
		this.qNo = qNo;
	}
	public String getqCtgr() {
		return qCtgr;
	}
	public void setqCtgr(String qCtgr) {
		this.qCtgr = qCtgr;
	}
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqWriter() {
		return qWriter;
	}
	public void setqWriter(String qWriter) {
		this.qWriter = qWriter;
	}
	public String getqCont() {
		return qCont;
	}
	public void setqCont(String qCont) {
		this.qCont = qCont;
	}
	public Date getqDate() {
		return qDate;
	}
	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}
	public int getqIsA() {
		return qIsA;
	}
	public void setqIsA(int qIsA) {
		this.qIsA = qIsA;
	}
	public String getqFilename() {
		return qFilename;
	}
	public void setqFilename(String qFilename) {
		this.qFilename = qFilename;
	}
	public String getqFilepath() {
		return qFilepath;
	}
	public void setqFilepath(String qFilepath) {
		this.qFilepath = qFilepath;
	}
	
}
