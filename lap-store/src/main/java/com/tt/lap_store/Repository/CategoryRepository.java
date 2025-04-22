package com.tt.lap_store.Repository;

import com.tt.lap_store.Model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CategoryRepository extends JpaRepository<Category, Integer> {
    public abstract boolean existsByName(String name);
    public List<Category> findByIsActiveTrue(String name);

}
