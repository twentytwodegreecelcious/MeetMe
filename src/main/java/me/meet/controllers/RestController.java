package me.meet.controllers;

import me.meet.entities.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * Created by User on 28.09.2016.
 */
@Controller
public class RestController {

    @RequestMapping(method = RequestMethod.GET, value = "/getSession")
    public Boolean getHttpSession (HttpSession httpSession)  {
        if (null != httpSession.getAttribute("user"))
            return true;
        return false;
    }

    @RequestMapping("/isLogged")
    public ModelAndView isLogged(HttpSession httpSession) {
        User user = (User)httpSession.getAttribute("user");
        if (null != user){
            return new ModelAndView("ajax/logged");
        }
        else{
            return new ModelAndView("ajax/guest");
        }
    }

}
