package com.tt.lap_store.Service;

import com.tt.lap_store.Model.Category;

import java.util.List;

public interface CategoryService {

    public Category saveCategory(Category category);

    public Boolean existCategory(String name);

    public List<Category> getAllCategory();

    public Boolean deleteCategory(Integer id);

    public Category getCategoryById(Integer id);
}
