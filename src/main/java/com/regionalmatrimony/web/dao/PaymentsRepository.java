package com.regionalmatrimony.web.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.regionalmatrimony.web.model.Payments;

public interface PaymentsRepository extends JpaRepository<Payments, String> {

	@Query("SELECT payments FROM Payments payments WHERE payments.memberId = (:memberId)")
	List<Payments> getAccessedMemberByMemberId(@Param("memberId") String memberId);
}
