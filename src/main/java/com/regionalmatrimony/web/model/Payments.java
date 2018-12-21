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
@Table(name="PAYMENTS")
public class Payments implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int paymentsId;
	@Column(name="orderid")
	private String orderId;
	@Column(name="memberid")
	private String memberId;
	@Column(name="paidfor")
	private String paidFor;
	@Column(name="paytmtxnid")
	private String paytmTxnId;
	@Column(name="banktxnid")
	private String bankTxnId;
	@Column(name="bankname")
	private String bankName;
	@Column(name="paymentmode")
	private String paymentMode;
	@Column(name="txnamount")
	private float txnAmount;
	@Column(name="txntime")
	private Timestamp txnTime;
	@Column(name="txnstatus")
	private String txnStatus;
	@Column(name="respcode")
	private int respCode;
	@Column(name="respmsg")
	private String respMsg;
	@Column(name="mid")
	private String mid;
	@Column(name="refundant")
	private float refundant;
	public int getPaymentsId() {
		return paymentsId;
	}
	public void setPaymentsId(int id) {
		this.paymentsId = id;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPaidFor() {
		return paidFor;
	}
	public void setPaidFor(String paidFor) {
		this.paidFor = paidFor;
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
	@Override
	public String toString() {
		return "Payments [id=" + paymentsId + ", orderId=" + orderId + ", memberId=" + memberId + ", paidFor=" + paidFor
				+ ", paytmTxnId=" + paytmTxnId + ", bankTxnId=" + bankTxnId + ", bankName=" + bankName
				+ ", paymentMode=" + paymentMode + ", txnAmount=" + txnAmount + ", txnTime=" + txnTime + ", txnStatus="
				+ txnStatus + ", respCode=" + respCode + ", respMsg=" + respMsg + ", mid=" + mid + ", refundant="
				+ refundant + "]";
	}
	
}
