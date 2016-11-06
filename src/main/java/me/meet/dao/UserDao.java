package me.meet.dao;

import me.meet.entities.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by User on 28.09.2016.
 */
@Repository
public interface UserDao extends CrudRepository<User, Long>{

    User findByEmail(String email);

    User findByEmailAndPassword(String email, String password);

}