package me.meet.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.sql.DataSource;

/**
 * Created by User on 28.09.2016.
 */
@Controller
public class AjaxController {

    @Autowired
    private DataSource dataSource;

    @RequestMapping("/getRegistration")
    public ModelAndView getRegistration() {
        return new ModelAndView("pages/registration.jsp");
    }

    @RequestMapping("/home")
    public ModelAndView home(){
        return new ModelAndView("index.jsp");
    }
}
