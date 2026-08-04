package in.ajaytech.services;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.json.JSONObject;

@Controller
public class EmployeeService {

    @GetMapping("/employee/details")
    @ResponseBody
    public String getEmployeeDetails() {
        JSONObject js = new JSONObject();
        js.put("Name", "Ajay Tech Solutions");
        js.put("Domain", "ajaytech.in");
        js.put("Focus", "DevOps, Cloud, Automation");
        js.put("Vision", "Simplifying Infrastructure with Clear Documentation");
        return js.toString();
    }
}

