package me.meet.controllers;

import me.meet.dao.UserDao;
import me.meet.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;

/**
 * Created by User on 27.09.2016.
 */
@Controller
public class UserController {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private UserDao userDao;

    @RequestMapping("/login")
    public String login(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession httpSession) {
        User user= userDao.findByEmailAndPassword(email, password);
        if (null != user){
            httpSession.setAttribute("user", user);
            return "pages/success";
        }
        else{
            return "Old/index";
        }
    }
    //TODO Finish buttons hiding.
    @RequestMapping(value="/register", method= RequestMethod.GET)
    public String register(HttpSession httpSession, @RequestParam("email") String email, @RequestParam("password") String password, @RequestParam("password1") String repeatPassword,
                           @RequestParam("name") String name, @RequestParam("surname") String surname, @RequestParam("bday") String date, @RequestParam("country") String country,
                           @RequestParam("city") String city, @RequestParam("phone") String phone){
        if (null == userDao.findByEmail(email)) {
            User user = new User();
            if (password.equals(repeatPassword)) {
                user.setPassword(password);
                user.setEmail(email);
                user.setFirstName(name);
                user.setLastName(surname);
                DateFormat format = new SimpleDateFormat("yyyy-dd-MM", Locale.ENGLISH);
                try {
                    user.setBirthday(format.parse(date));
                } catch (ParseException exc)  {
                    System.err.println(exc);
                }
                user.setCountry(country);
                user.setCity(city);
                user.setPhone(phone);
                // user.setBirthdayDate(date);
            }
            userDao.save(user);
            return "pages/registration";
        }
        else
            return "pages/registration";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession httpSession) {
        httpSession.removeAttribute("user");
        return "Old/index";
    }
}
