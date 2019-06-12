package com.regionalmatrimony.web.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.regionalmatrimony.web.model.Groom;

@Transactional
public interface GroomRepository extends JpaRepository<Groom, String> {

	@Query("SELECT groom FROM Groom groom WHERE groom.mobileNumber = (:mobileNumber) AND groom.agencyId = (:agencyId)")
	List<Groom> findByMobileNumber(@Param("mobileNumber") String mobileNumber, @Param("agencyId") String agencyId);

	@Query("SELECT groom FROM Groom groom WHERE (groom.firstName = (:firstName) OR groom.lastName = (:lastName)) AND groom.agencyId = (:agencyId)")
	List<Groom> findGroomByFullName(@Param("firstName") String firstName, @Param("lastName") String lastName,
			@Param("agencyId") String agencyId);

	@Query("SELECT groom FROM Groom groom WHERE groom.star = (:star) AND groom.raasi = (:raasi) AND groom.agencyId = (:agencyId)")
	List<Groom> findGroomByStarNdRaasi(@Param("star") String star, @Param("raasi") String raasi,
			@Param("agencyId") String agencyId);

	@Query("SELECT groom FROM Groom groom WHERE groom.agencyId = (:agencyId)")
	List<Groom> findGroomByAgency(@Param("agencyId") String agencyId);

	@Query("SELECT groom.memberId from Groom groom WHERE groom.creationDate = (SELECT MAX(groom.creationDate) FROM Groom groom))")
	String getLastUpdatedGroomId();

	@Query("SELECT groom from Groom groom WHERE groom.memberId = (:memberId)")
	Groom findGroomByMemberId(@Param("memberId") String memberId);

	@Query("SELECT COUNT(groom.id) FROM Groom groom WHERE groom.agencyId = (:agencyId)")
	int countGroom(@Param("agencyId") String agencyId);

	@Query("SELECT groom FROM Groom groom ORDER BY groom.creationDate DESC")
	List<Groom> findRecentlyAddedGroom();

	@Query("SELECT groom FROM Groom groom WHERE groom.education=(:education) OR groom.occupation=(:occupation) OR groom.mobileNumber=(:mobileNumber) OR groom.subCaste=(:subCaste) OR groom.star=(:star) OR groom.raasi=(:raasi)")
	List<Groom> getSimpleSearch(@Param("education") String education, @Param("occupation") String occupation,
			@Param("mobileNumber") String mobileNumber, @Param("subCaste") String subCaste, @Param("star") String star,
			@Param("raasi") String raasi);
}
