package com.regionalmatrimony.web.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.regionalmatrimony.web.model.Agency;

public interface AgencyLoginRepository extends CrudRepository<Agency, Long> {

	@Query("SELECT agency FROM Agency agency WHERE agency.agencyId = (:agencyId)")
	Agency getAgencyDetail(@Param("agencyId") String agencyId);
	
	@Query("SELECT agency FROM Agency agency WHERE agency.mobileNumber = (:mobileNumber) OR agency.email = (:email)")
	Agency getAgencyByMobNdEmail(@Param("mobileNumber") String mobileNumber,@Param("email") String email);
	
	@Query("SELECT MAX(agency.id) FROM Agency agency")
	Long getMaxId();
	
	@Query("SELECT agency.agencyId from Agency agency WHERE agency.id = (:id)")
	String getLastUpdatedAgencyId(@Param("id") Long id);
}
