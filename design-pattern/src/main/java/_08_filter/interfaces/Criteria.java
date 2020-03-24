package _08_filter.interfaces;

import _08_filter.vo.Person;

import java.util.List;

public interface Criteria {
    List<Person> meetCriteria(List<Person> persons);
}
