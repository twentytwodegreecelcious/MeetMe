package me.meet.entities;

import java.sql.Time;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Event.class)
public abstract class Event_ {

	public static volatile SingularAttribute<Event, Integer> id;
	public static volatile SingularAttribute<Event, Time> time;
	public static volatile SingularAttribute<Event, String> name;
	public static volatile SingularAttribute<Event, Date> date;

}

