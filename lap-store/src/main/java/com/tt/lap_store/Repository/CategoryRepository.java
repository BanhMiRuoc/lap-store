package com.tt.lap_store.Repository;

import com.tt.lap_store.Model.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
    public boolean existByName(String name);
}
