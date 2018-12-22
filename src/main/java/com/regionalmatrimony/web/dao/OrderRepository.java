package com.regionalmatrimony.web.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.regionalmatrimony.web.model.Order;

public interface OrderRepository extends JpaRepository<Order, String> {

	@Query("SELECT order FROM Order order WHERE order.agencyId = (:agencyId)")
	List<Order> getOrderByAgencyId(@Param("agencyId") String agencyId);
	
	@Query("SELECT order FROM Order order WHERE order.orderName = (:orderName)")
	List<Order> getOrderByOrderName(@Param("orderName") String orderName);
}
