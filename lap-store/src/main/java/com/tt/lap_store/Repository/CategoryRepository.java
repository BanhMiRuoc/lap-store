package com.tt.lap_store.Repository;

import com.tt.lap_store.Model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public interface CategoryRepository extends JpaRepository<Category, Integer> {
    public abstract boolean existsByName(String name);
}
