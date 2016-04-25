package com.jobSearch.VO;

import java.util.Date;

public class OrdersVO {
	private int orderId;
	private int userId;
	private int totalFee;
	private Date applied;
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getTotalFee() {
		return totalFee;
	}
	public void setTotalFee(int totalFee) {
		this.totalFee = totalFee;
	}
	public Date getApplied() {
		return applied;
	}
	public void setApplied(Date applied) {
		this.applied = applied;
	}

}
