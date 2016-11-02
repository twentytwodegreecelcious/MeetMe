package me.meet.dao;

import me.meet.entities.Event;
import me.meet.exceptions.EventNotFoundException;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by User on 05.10.2016.
 */

@Repository
public interface EventDao extends CrudRepository<Event, Long> {

//    List<Event> findEvent
    //TODO finish Event IdClass
    //TODO Connect users and events

    List<Event> findByNameIgnoreCase(String Name) throws EventNotFoundException;
}
