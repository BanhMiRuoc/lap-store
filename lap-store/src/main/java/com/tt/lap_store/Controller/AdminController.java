package com.tt.lap_store.Controller;

import com.tt.lap_store.Model.Category;
import com.tt.lap_store.Model.Product;
import com.tt.lap_store.Service.CategoryService;
import com.tt.lap_store.Service.ProductService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private ProductService productService;

    @GetMapping("/")
    public String index() {
        return "admin/index";
    }

    @GetMapping("/loadAddProduct")
    public String loadAddProduct(Model m) {
        List<Category> categories = categoryService.getAllCategory();
        m.addAttribute("categories", categories);
        return "admin/add_product";
    }

    @GetMapping("/category")
    public String category(Model m) {
        m.addAttribute("categorys", categoryService.getAllCategory());
        return "admin/category";
    }

    @PostMapping("/saveCategory")
    public String saveCategory(@ModelAttribute Category category, @RequestParam("file") MultipartFile file,
                               HttpSession session) throws IOException {
        String imageName = file != null ? file.getOriginalFilename() : "default.jpg";
        category.setImageName(imageName);

        Boolean existCategory = categoryService.existCategory(category.getName());

        if (existCategory) {
            session.setAttribute("errorMsg", "Category Name already exists");
        } else {
            Category categorySaved = categoryService.saveCategory(category);
            if (ObjectUtils.isEmpty(categorySaved)) {
                session.setAttribute("errorMsg", "Category not saved ! Internal server error");
            } else {
                File saveFile = new ClassPathResource("static/image").getFile();
                Path path = Paths.get(saveFile.getAbsolutePath() + File.separator + "category_img" + File.separator + file.getOriginalFilename());

//                System.out.println(path);
                Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);

                session.setAttribute("succMsg", "Category saved successfully");
            }
        }
        return "redirect:/admin/category";
    }
    @GetMapping("/deleteCategory/{id}")
    public String deleteCategory(@PathVariable int id, HttpSession session) {
        Boolean deleteCategory = categoryService.deleteCategory(id);
        if (deleteCategory) {
            session.setAttribute("succMsg", "Category deleted successfully");
        }
        else {
            session.setAttribute("errorMsg", "Something went wrong");
        }
        return "redirect:/admin/category";
    }
    @GetMapping("/loadEditCategory/{id}")
    public String loadEditCategory(@PathVariable int id, Model m) {
        m.addAttribute("category", categoryService.getCategoryById(id));
        return "admin/edit_category";
    }
    @PostMapping("/updateCategory")
    public String updateCategory(@ModelAttribute Category category, @RequestParam("file") MultipartFile file, HttpSession session) throws IOException {
        Category category1 = categoryService.getCategoryById(category.getId());
        String image = file.isEmpty() ? category1.getImageName() : file.getOriginalFilename();

        if (ObjectUtils.isEmpty(category)) {
            category1.setName(category.getName());
            category1.setIsActive(category1.getIsActive());
            category1.setImageName(image);
        }
        Category updateCategory = categoryService.saveCategory(category1);
        if (ObjectUtils.isEmpty(updateCategory)) {

            if(!file.isEmpty()) {
                File saveFile = new ClassPathResource("static/image").getFile();
                Path path = Paths.get(saveFile.getAbsolutePath() + File.separator + "category_img" + File.separator + file.getOriginalFilename());

//                System.out.println(path);
                Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
            }

            session.setAttribute("succMsg", "Category updated successfully");
        }
        else {
            session.setAttribute("errorMsg", "Something went wrong");
        }
        return "redirect:/admin/loadEditCategory/" + category.getId();
    }

    @PostMapping("/saveProduct")
    public String saveProduct(@ModelAttribute Product product, @RequestParam("file") MultipartFile image, HttpSession session) throws IOException {

        String imageName = image.isEmpty() ? "default.jpg" : image.getOriginalFilename();

        product.setImage(imageName);

        Product saveProduct = productService.saveProduct(product);
        if (!ObjectUtils.isEmpty(saveProduct)) {
            File saveFile = new ClassPathResource("static/image").getFile();
            Path path = Paths.get(saveFile.getAbsolutePath() + File.separator + "product_img" + File.separator + image.getOriginalFilename());

//                System.out.println(path);
            Files.copy(image.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
            session.setAttribute("succMsg", "Product save success");
        } else {
            session.setAttribute("errorMsg", "Something went wrong");
        }
        return "redirect:/admin/loadAddProduct";
    }
}