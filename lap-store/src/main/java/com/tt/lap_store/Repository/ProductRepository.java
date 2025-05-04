package com.tt.lap_store.Repository;

import java.util.List;

import com.tt.lap_store.Model.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.tt.lap_store.Model.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	List<Product> findByIsActiveTrue();

	Page<Product> findByIsActiveTrue(Pageable pageable);

	List<Product> findByCategory_Name(String name);

	Page<Product> findByCategory_Name(String name, Pageable pageable);

	List<Product> findByIsActiveTrueAndCategoryName(String categoryName);

	@Query("SELECT p FROM Product p WHERE p.isActive = true AND p.category.name = :categoryName")
	Page<Product> findByIsActiveTrueAndCategoryName(@Param("categoryName") String categoryName, Pageable pageable);

	Page<Product> findByIsActiveTrueAndCategory(Pageable pageable, Category category);

	List<Product> findByCategoryNameIgnoreCaseAndIsActiveTrue(String categoryName);

	@Query("SELECT p FROM Product p WHERE LOWER(p.title) LIKE LOWER(CONCAT('%', :ch, '%')) OR LOWER(p.category.name) LIKE LOWER(CONCAT('%', :ch2, '%'))")
	List<Product> searchByTitleOrCategoryName(@Param("ch") String ch, @Param("ch2") String ch2);

	Page<Product> findByCategory(Category category, Pageable pageable);

	Page<Product> findByTitleContainingIgnoreCaseOrCategoryContainingIgnoreCase(String ch, String ch2,
			Pageable pageable);

	@Query("SELECT p FROM Product p WHERE p.isActive = true AND (LOWER(p.title) LIKE LOWER(CONCAT('%', :ch, '%')) OR LOWER(p.category.name) LIKE LOWER(CONCAT('%', :ch2, '%')))")
	Page<Product> searchActiveByTitleOrCategoryName(@Param("ch") String ch, @Param("ch2") String ch2, Pageable pageable);

}
