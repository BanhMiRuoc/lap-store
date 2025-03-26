package Controller;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @GetMapping("/")
    public Strung index() {
        return "admin/index";
    }

}