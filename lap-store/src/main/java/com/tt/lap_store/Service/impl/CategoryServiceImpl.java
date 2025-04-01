package com.tt.lap_store.Service.impl;

import com.tt.lap_store.Model.Category;
import com.tt.lap_store.Repository.CategoryRepository;
import com.tt.lap_store.Service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public Category saveCategory(Category category) {
        return categoryRepository.save(category);
    }

    @Override
    public List<Category> getAllCategory() {
        return categoryRepository.findAll();
    }

    @Override
    public Boolean existCategory(String name) {
        return categoryRepository.existByName(name);
    }

}
