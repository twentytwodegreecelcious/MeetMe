package me.meet.controllers;

import com.sun.org.apache.xpath.internal.operations.Mod;
import me.meet.dao.EventDao;
import me.meet.entities.Event;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by andre on 07.11.2016.
 */
@Controller
public class EventController {

    @Autowired
    private EventDao eventDao;

    @RequestMapping("/getEvents")
    public ModelAndView showEvents (){
        ModelAndView mav = new ModelAndView("ajax/showAllEvents");
        List<Event> allEvents = eventDao.findByNameIsNotNull();
        mav.addObject("events", allEvents);
        return mav;
    }

}
