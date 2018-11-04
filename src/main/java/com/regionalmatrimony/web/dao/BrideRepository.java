package com.regionalmatrimony.web.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.regionalmatrimony.web.model.Bride;

public interface BrideRepository extends JpaRepository<Bride, Long> {

	@Query("SELECT bride FROM Bride bride WHERE bride.mobileNumber = (:mobileNumber)")
	List<Bride> findByMobileNumber(@Param("mobileNumber") String mobileNumber);
	
	@Query("SELECT bride FROM Bride bride WHERE bride.firstName = (:firstName) OR bride.lastName = (:lastName)")
	List<Bride> findBrideByFullName(@Param("firstName") String firstName, @Param("lastName") String lastName);
	
	@Query("SELECT bride FROM Bride bride WHERE bride.star = (:star) AND bride.raasi = (:raasi)")
	List<Bride> findBrideByStarNdRaasi(@Param("star") String star, @Param("raasi") String raasi);
}
