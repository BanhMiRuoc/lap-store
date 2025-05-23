package com.tt.lap_store.Service;

import java.util.List;

import com.tt.lap_store.Model.Category;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.multipart.MultipartFile;

import com.tt.lap_store.Model.Product;

public interface ProductService {

	public Product saveProduct(Product product);

	public List<Product> getAllProducts();

	public Boolean deleteProduct(Integer id);

	public Product getProductById(Integer id);

	public Product updateProduct(Product product, MultipartFile file);

	public List<Product> getAllActiveProducts(); // overload không cần tham số

	public List<Product> getAllActiveProducts(Category category);

	public List<Product> searchProduct(String ch);

	public Page<Product> getAllActiveProductPagination(Integer pageNo, Integer pageSize, Category category);

	public Page<Product> searchProductPagination(Integer pageNo, Integer pageSize, String ch);

	public Page<Product> getAllProductsPagination(Integer pageNo, Integer pageSize);

	public Page<Product> searchActiveProductPagination(Integer pageNo, Integer pageSize, Category category, String ch);

	List<Product> getAllActiveProductsByCategoryName(String categoryName);

}
