package master.dto;

public class TourAddDTO {
	String tid;
	String tname;
	String tplace1;
	String tplace2;
	String tplace3;
	String nofdays;
	String doftour;
	double price;
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTplace1() {
		return tplace1;
	}
	public void setTplace1(String tplace1) {
		this.tplace1 = tplace1;
	}
	public String getTplace2() {
		return tplace2;
	}
	public void setTplace2(String tplace2) {
		this.tplace2 = tplace2;
	}
	public String getTplace3() {
		return tplace3;
	}
	public void setTplace3(String tplace3) {
		this.tplace3 = tplace3;
	}
	public String getNofdays() {
		return nofdays;
	}
	public void setNofdays(String nofdays) {
		this.nofdays = nofdays;
	}
	public String getDoftour() {
		return doftour;
	}
	public void setDoftour(String doftour) {
		this.doftour = doftour;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
}
