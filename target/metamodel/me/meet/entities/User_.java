package me.meet.entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(User.class)
public abstract class User_ {

	public static volatile SingularAttribute<User, Date> birthday;
	public static volatile SingularAttribute<User, String> lastName;
	public static volatile SingularAttribute<User, String> phone;
	public static volatile SingularAttribute<User, Integer> interests;
	public static volatile SingularAttribute<User, String> email;
	public static volatile SingularAttribute<User, Integer> userId;
	public static volatile SingularAttribute<User, String> firstName;
	public static volatile SingularAttribute<User, String> password;
	public static volatile SingularAttribute<User, String> city;
	public static volatile SingularAttribute<User, String> country;

}

