package model;

public class Scene {

	private String place;//地点
	private int S_number;//开团人数
	private String status;//开团状态
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public int getS_number() {
		return S_number;
	}
	public void setS_number(int s_number) {
		S_number = s_number;
	}
	public int getR_number() {
		return R_number;
	}
	public void setR_number(int r_number) {
		R_number = r_number;
	}
	private int R_number;//实际人数
}
