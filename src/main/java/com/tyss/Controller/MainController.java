package com.tyss.Controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tyss.User.Users;

@Controller
public class MainController {

	static EntityManager manager = Persistence.createEntityManagerFactory("hemanth").createEntityManager();
	static EntityTransaction transaction = manager.getTransaction();

	@PostMapping("/save")
	public ModelAndView saveUser(@RequestParam String name, @RequestParam String email, @RequestParam String password,
			@RequestParam long phone, ModelAndView mv) {
		Users u = new Users();
		u.setName(name);
		u.setEmail(email);
		u.setPassword(password);
		u.setPhone(phone);
		mv.addObject("u", u);
		mv.setViewName("login.jsp");
		mv.addObject("msg", "Account Created Succsfully");
		transaction.begin();
		manager.persist(u);
		transaction.commit();
		System.out.println("Data Saved Successfully..");
		return mv;

	}

	@RequestMapping("/login")
	public ModelAndView loginPage(@RequestParam String email, @RequestParam String password, ModelAndView mv) {
		Users u = null;
		Query q = manager.createQuery("select u from Users u where u.email=:email and u.password=:password");
		q.setParameter("email", email);
		q.setParameter("password", password);

		List<Users> list = q.getResultList();

		if (list.size() > 0) {
			u = (Users) list.get(0);
			mv.addObject("u", u);
			mv.setViewName("loginsuccess.jsp");
		} else {
			mv.addObject("msg", "Invalid Credentials...");
			mv.setViewName("index.jsp");
		}
		return mv;
	}

	@RequestMapping("/fetch")
	public ModelAndView fetchData(ModelAndView mv) {
		mv.setViewName("fetch.jsp");
		mv.addObject("users", findAll());
		for (Object o : findAll())
			System.out.println(o);
		return mv;
	}

	private List<Users> findAll() {
		Query a = manager.createQuery("FROM Users");
		List<Users> list = a.getResultList();
		return list;
	}
	@RequestMapping("/delete")
	public ModelAndView removeData(@RequestParam int id,ModelAndView mv)
	{
		   Users u = manager.find(Users.class, id);
		   transaction.begin();
		   manager.remove(u);
		   transaction.commit();
		return fetchData(mv);
	}
	@RequestMapping("/update")
	public ModelAndView updateData(@RequestParam int id, ModelAndView mv) {

		Users u = manager.find(Users.class, id);
		if (u == null) {
			mv.setViewName("index.jsp");
			mv.addObject("msg", "Invalid User Id");
			return mv;
		}
		mv.setViewName("update.jsp");
		mv.addObject("u", u);
		return mv;
	}

	@PostMapping("/updateuser")
	public ModelAndView updateUser(@RequestParam int id, @RequestParam String name, @RequestParam String email,	ModelAndView mv) {
		Users u = manager.find(Users.class, id);
		u.setEmail(email);
		u.setName(name);
		transaction.begin();
		manager.merge(u);
		transaction.commit();
		return fetchData(mv);
	}

}
