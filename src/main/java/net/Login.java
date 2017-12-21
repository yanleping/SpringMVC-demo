package net;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Login {

    //方式一
    @RequestMapping("/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,Model model){
        if (username.equals(password))
        {
            model.addAttribute("username", username);
            return "ok.jsp";
        } else {
            return "no.jsp";
        }
    }
}
