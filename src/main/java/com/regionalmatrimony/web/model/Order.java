package com.regionalmatrimony.web.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ORDER")
public class Order implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "orderid")
	private int orderId;
	@Column(name = "ordername")
	private String orderName;
	@Column(name = "agencyid")
	private String agencyId;
	@Column(name = "paytmtxnid")
	private String paytmTxnId;
	@Column(name = "banktxnid")
	private String bankTxnId;
	@Column(name = "bankname")
	private String bankName;
	@Column(name = "paymentmode")
	private String paymentMode;
	@Column(name = "txnamount")
	private float txnAmount;
	@Column(name = "txntime")
	private Timestamp txnTime;
	@Column(name = "txnstatus")
	private String txnStatus;
	@Column(name = "respcode")
	private int respCode;
	@Column(name = "respmsg")
	private String respMsg;
	@Column(name = "mid")
	private String mid;
	@Column(name = "refundant")
	private float refundant;
	@Column(name = "memberid")
	private String memberId;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getOrderName() {
		return orderName;
	}

	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}

	public String getPaytmTxnId() {
		return paytmTxnId;
	}

	public void setPaytmTxnId(String paytmTxnId) {
		this.paytmTxnId = paytmTxnId;
	}

	public String getBankTxnId() {
		return bankTxnId;
	}

	public void setBankTxnId(String bankTxnId) {
		this.bankTxnId = bankTxnId;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	public float getTxnAmount() {
		return txnAmount;
	}

	public void setTxnAmount(float txnAmount) {
		this.txnAmount = txnAmount;
	}

	public Timestamp getTxnTime() {
		return txnTime;
	}

	public void setTxnTime(Timestamp txnTime) {
		this.txnTime = txnTime;
	}

	public String getTxnStatus() {
		return txnStatus;
	}

	public void setTxnStatus(String txnStatus) {
		this.txnStatus = txnStatus;
	}

	public int getRespCode() {
		return respCode;
	}

	public void setRespCode(int respCode) {
		this.respCode = respCode;
	}

	public String getRespMsg() {
		return respMsg;
	}

	public void setRespMsg(String respMsg) {
		this.respMsg = respMsg;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public float getRefundant() {
		return refundant;
	}

	public void setRefundant(float refundant) {
		this.refundant = refundant;
	}

	public String getAgencyId() {
		return agencyId;
	}

	public void setAgencyId(String agencyId) {
		this.agencyId = agencyId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "Payments [orderId=" + orderId + ", ordername=" + orderName + ", paytmTxnId=" + paytmTxnId
				+ ", bankTxnId=" + bankTxnId + ", bankName=" + bankName + ", paymentMode=" + paymentMode
				+ ", txnAmount=" + txnAmount + ", txnTime=" + txnTime + ", txnStatus=" + txnStatus + ", respCode="
				+ respCode + ", respMsg=" + respMsg + ", mid=" + mid + ", refundant=" + refundant + "]";
	}

}
