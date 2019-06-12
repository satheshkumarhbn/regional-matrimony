package com.regionalmatrimony.web.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.regionalmatrimony.web.model.Bride;

public interface BrideRepository extends JpaRepository<Bride, String> {

	@Query("SELECT bride FROM Bride bride WHERE bride.mobileNumber = (:mobileNumber) AND bride.agencyId = (:agencyId)")
	List<Bride> findByMobileNumber(@Param("mobileNumber") String mobileNumber, @Param("agencyId") String agencyId);
	
	@Query("SELECT bride FROM Bride bride WHERE (bride.firstName = (:firstName) OR bride.lastName = (:lastName)) AND bride.agencyId = (:agencyId)")
	List<Bride> findBrideByFullName(@Param("firstName") String firstName, @Param("lastName") String lastName, @Param("agencyId") String agencyId);
	
	@Query("SELECT bride FROM Bride bride WHERE bride.star = (:star) AND bride.raasi = (:raasi) AND bride.agencyId = (:agencyId)")
	List<Bride> findBrideByStarNdRaasi(@Param("star") String star, @Param("raasi") String raasi, @Param("agencyId") String agencyId);
	
	@Query("SELECT bride FROM Bride bride WHERE bride.agencyId = (:agencyId)")
	List<Bride> findBrideByAgency(@Param("agencyId") String agencyId);

	@Query("SELECT bride.memberId from Bride bride WHERE bride.creationDate = (SELECT MAX(bride.creationDate) from Bride bride)")
	String getLastUpdatedBrideId();
	
	@Query("SELECT bride from Bride bride WHERE bride.memberId = (:memberId)")
	Bride findBrideByMemberId(@Param("memberId") String memberId);
	
	@Query("SELECT COUNT(bride.id) FROM Bride bride WHERE bride.agencyId = (:agencyId)")
	int countBride(@Param("agencyId") String agencyId);
	
	@Query("SELECT bride FROM Bride bride ORDER BY bride.creationDate DESC")
	List<Bride> findRecentlyAddedBride();

	@Query("SELECT bride FROM Bride bride WHERE bride.education=(:education) OR bride.occupation=(:occupation) OR bride.mobileNumber=(:mobileNumber) OR bride.subCaste=(:subCaste) OR bride.star=(:star) OR bride.raasi=(:raasi)")
	List<Bride> getSimpleSearch(@Param("education") String education, @Param("occupation") String occupation,
			@Param("mobileNumber") String mobileNumber, @Param("subCaste") String subCaste, @Param("star") String star,
			@Param("raasi") String raasi);
}
