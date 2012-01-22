package ejb.ProjetEJBGit.view;

import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;

import ejb.ProjetEJBGit.model.Person;
import ejb.ProjetEJBGit.bean.PersonDao;


@Named("personBean")
@RequestScoped
public class PersonBean {

	@Inject 
	private PersonDao personDao;	
	
	private Person person = new Person();
	
	public void savePerson() {
		personDao.savePerson(person);
		//once saved, we want to clear the values
		person = new Person();
	}
	
	public List<Person> getPeople() {
		return personDao.getPeople();
	}
	
	public Person getPerson() {
		return person;
	}
	
	public void setPerson(Person person) {
		this.person = person;
	}
}
