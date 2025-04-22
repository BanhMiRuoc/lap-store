package com.tt.lap_store.Service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.tt.lap_store.Model.Category;

public interface CategoryService {

	public Category saveCategory(Category category);

	public Boolean existCategory(String name);

	public List<Category> getAllCategory();

	public Boolean deleteCategory(int id);

	public Category getCategoryById(int id);

	public List<Category> getAllActiveCategory();

	public Page<Category> getAllCategorPagination(Integer pageNo,Integer pageSize);

}
