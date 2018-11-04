package com.regionalmatrimony.web.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.regionalmatrimony.web.model.Groom;

@Transactional
public interface GroomRepository extends JpaRepository<Groom, Long> {
	
	@Query("SELECT groom FROM Groom groom WHERE groom.mobileNumber = (:mobileNumber)")
	List<Groom> findByMobileNumber(@Param("mobileNumber") String mobileNumber);
	
	@Query("SELECT groom FROM Groom groom WHERE groom.firstName = (:firstName) OR groom.lastName = (:lastName)")
	List<Groom> findGroomByFullName(@Param("firstName") String firstName, @Param("lastName") String lastName);
	
	@Query("SELECT groom FROM Groom groom WHERE groom.star = (:star) AND groom.raasi = (:raasi)")
	List<Groom> findGroomByStarNdRaasi(@Param("star") String star, @Param("raasi") String raasi);
}
