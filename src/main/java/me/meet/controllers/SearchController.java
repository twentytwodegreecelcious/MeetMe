package me.meet.controllers;

import me.meet.dao.EventDao;
import me.meet.entities.Event;
import me.meet.exceptions.EventNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by User on 26.10.2016.
 */

@Controller
public class SearchController {

    @Autowired
    private EventDao eventDao;

    @RequestMapping("/performSearch")
    public ModelAndView performSearch (@RequestParam("name") String name) {
        Boolean flag = false;
        ModelAndView modelAndView = new ModelAndView("ajax/searchResultSet");
        try {
            List<Event> events = eventDao.findByNameIgnoreCase("%" + name + "%");
            modelAndView.addObject("events", events);
        } catch (EventNotFoundException exc) {
            System.err.println(exc);
            flag = true;
        }
        finally {
            if (flag) {
                String failure = "No events match your request";
                modelAndView.addObject(failure);
            }
        }
        return modelAndView;
    }
}
