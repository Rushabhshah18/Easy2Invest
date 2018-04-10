package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;





import com.model.entreprenure;
import com.model.idea;
import com.model.investor;
import com.model.proposal;
import com.model.registerUser;
import com.model.Faq;
import com.util.*;

public class Dao {
	private SessionFactory sessionfactory = HibrnateConnectionManager.getSessionFactory();

	public Integer doAddStatement(entreprenure reg) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		Integer id = 0;
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			id = (Integer) session.save(reg);

			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return id;
	}

	public List<entreprenure> doLoadUser() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();
		try {
			List<entreprenure> ls = session.createCriteria(entreprenure.class).list();
			return ls;
		} finally {
			session.close();
		}

	}

	public Integer doAddStatement(investor reg) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		Integer id = 0;
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			System.out.println("Connected");
			id = (Integer) session.save(reg);

			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return id;
	}

	public List<entreprenure> doLoadEntreprenure() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();

		try {
			List<entreprenure> listStudent = session.createCriteria(entreprenure.class).list();
			return listStudent;

		} catch (Exception e) {
			// TODO: handle exception

			e.printStackTrace();
			return null;

		} finally {
			session.close();
		}
	}

	public List<entreprenure> doUpdateUser(int id) {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();

		try {

			List<entreprenure> entreprenure = session.createCriteria(entreprenure.class).add(Restrictions.eq("id", id))
					.list();

			return entreprenure;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	public String doUpdateEntreprenure(entreprenure reg) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			session.update(reg);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public String doDeleteEntreprenure(entreprenure entreprenure) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			session.delete(entreprenure);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public List<investor> doLoadInvestor() {
		Session session = sessionfactory.openSession();
		try {
			List<investor> ls = session.createCriteria(investor.class).list();
			return ls;
		} finally {
			session.close();
		}

	}

	public List<investor> doUpdateInvestor(int id) {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();

		try {

			List<investor> investor = session.createCriteria(investor.class).add(Restrictions.eq("id", id)).list();

			return investor;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	public String doModifyInvestor(investor reg) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			session.update(reg);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public Integer doAddProposal(proposal reg) {
		Session session = null;
		Transaction tx = null;

		Integer id = 0;
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			id = (Integer)session.save(reg);
			System.out.println("Connected"+id);
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return id;
	}

	public List<proposal> doLoadProposal() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();
		try {
			List<proposal> ls = session.createCriteria(proposal.class).list();
			return ls;
		} finally {
			session.close();
		}
	}

	public List<idea> doLoadIdea() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();
		try {
			List<idea> ls = session.createCriteria(idea.class).list();
			return ls;
		} finally {
			session.close();
		}

	}

	public List<proposal> doUpdateIdea(Integer id) {
		Session session = sessionfactory.openSession();

		try {

			List<proposal> entreprenure = session.createCriteria(proposal.class).add(Restrictions.eq("id", id)).list();

			return entreprenure;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	public String doUpdateProposal(proposal reg) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			session.update(reg);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public String doDeleteInvestor(investor investor) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			session.delete(investor);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public String doDeleteproposal(proposal proposal) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			session.delete(proposal);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public String doAddIdea(idea idea) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		Integer id = 0;
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.save(idea);

			tx.commit();
			return "Success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "failed";
		} finally {
			session.close();
			
		}

	}

	public List<idea> doLoadIdeaProposal() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();
		try {
			List<idea> list_idea = session.createCriteria(idea.class).list();
			return list_idea;
		} finally {
			session.close();
		}
	}

	/*
	 * public String doSetOtp(entreprenure entreprenure) { // TODO
	 * Auto-generated method stub String status=""; Session session=null;
	 * Transaction tx=null; int otp=entreprenure.getOtp(); String
	 * email=entreprenure.getEmail(); System.out.println(email); try{
	 * session=sessionfactory.openSession(); tx=session.beginTransaction();
	 * session.createCriteria(entreprenure.class).add(Restrictions.eq("email",
	 * email)).list(); session.update(otp);
	 * 
	 * tx.commit(); status="Success"; return status; }catch (Exception e) {
	 * tx.rollback(); e.printStackTrace(); status="failure"; return status;
	 * }finally{ session.close(); }
	 * 
	 * 
	 * }
	 */

	public List<registerUser> doLoadRegisterUser() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();
		try {
			List<registerUser> ls = session.createCriteria(registerUser.class).list();
			return ls;
		} finally {
			session.close();
		}

	}

	public Integer doRegisterUser(registerUser user) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		Integer id = 0;
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			id = (Integer) session.save(user);

			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return id;
	}

	public List<entreprenure> verifyEmail(String email) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;
		
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			List<entreprenure> loggedIn = session.createCriteria(entreprenure.class)
					.add(Restrictions.eq("email", email))
					.list();

			tx.commit();
			return loggedIn;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public String addOtp(entreprenure entreprenure) {
		Session session = null;
		Transaction tx = null;

		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();
			session.update(entreprenure);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
		} finally {
			session.close();
		}

	}

	public String dologin(com.model.entreprenure entreprenure) {
		// TODO Auto-generated method stub

		Transaction tx = null;
		Session session = sessionfactory.openSession();
		entreprenure loggedIn = new entreprenure();
		try {
			List<entreprenure> loginList = session.createCriteria(entreprenure.class)
					.add(Restrictions.eq("email", entreprenure.getEmail()))
					.add(Restrictions.eq("password", entreprenure.getPassword())).list();

			if (loginList != null & loginList.size() > 0) {

				loggedIn = loginList.get(0);

				return "success," + loggedIn.getId() + "," + loggedIn.getEmail() + "," + loggedIn.getfirstname();

			}
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
		} finally {
			session.close();
		}
		return "fail";

	}

	public String dologin(investor investor) {
		// TODO Auto-generated method stub
		Transaction tx = null;
		Session session = sessionfactory.openSession();
		investor loggedIn = new investor();

		List<investor> loginList = session.createCriteria(investor.class)
				.add(Restrictions.eq("email", investor.getEmail()))
				.add(Restrictions.eq("password", investor.getPassword())).list();

		if (loginList != null & loginList.size() > 0) {

			loggedIn = loginList.get(0);

			return "success," + loggedIn.getId() + "," + loggedIn.getEmail() + "," + loggedIn.getfirstname();

		} else {
			return "fail";
		}
	}

	public String doChangePassword(entreprenure entereprenure) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			session.update(entereprenure);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public String doCheckUser(com.model.entreprenure entreprenure) {
		// TODO Auto-generated method stub

		Transaction tx = null;
		Session session = sessionfactory.openSession();
		entreprenure loggedIn = new entreprenure();

		List<entreprenure> loginList = session.createCriteria(entreprenure.class)
				.add(Restrictions.eq("email", entreprenure.getEmail())).list();

		if (loginList != null & loginList.size() > 0) {

			loggedIn = loginList.get(0);

			return "success," + loggedIn.getId() + "," + loggedIn.getEmail() + "," + loggedIn.getfirstname();

		} else {
			return "You failed";
		}
	}

	public List<com.model.investor> doCheckInvestor(investor investor) {
		// TODO Auto-generated method stub
		Transaction tx = null;
		Session session = sessionfactory.openSession();
		investor loggedIn = new investor();

		List<investor> loginList = session.createCriteria(investor.class)
				.add(Restrictions.eq("email", investor.getEmail())).list();

		if (loginList != null & loginList.size() > 0) {
			return loginList;

		} else {
			return null;
		}
	}

	public String doCheckInvestorAvailability(investor investor) {
		// TODO Auto-generated method stub
		Transaction tx = null;
		Session session = sessionfactory.openSession();
		investor loggedIn = new investor();

		List<investor> loginList = session.createCriteria(investor.class)
				.add(Restrictions.eq("email", investor.getEmail())).list();

		if (loginList != null & loginList.size() > 0) {

			loggedIn = loginList.get(0);

			return "success," + loggedIn.getId() + "," + loggedIn.getEmail() + "," + loggedIn.getfirstname();

		} else {
			return "You failed";
		}
	}

	public String doChangePasswordInvestor(investor investor) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			session.update(investor);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
			// TODO: handle exception
		} finally {
			session.close();
		}
	}
	public List<Faq> doLoadFaq() {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();

		try {

			List<Faq> degreeList = session.createCriteria(Faq.class).list();

			return degreeList;

		} finally {

			session.close();

		}

	}
	public List<Faq> doUpdateFaq(Integer id) {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();

		try {

			List<Faq> faqs = session.createCriteria(Faq.class)
					.add(Restrictions.eq("id", id)).list();

			return faqs;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}
	public String doDeleteFaq(Faq faq) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			session.delete(faq);
			tx.commit();
			return "succes";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
			// TODO: handle exception
		} finally {
			session.close();
		}
	}
	public Integer doAddFaq(Faq faq) {

		Session session = null;
		Transaction tx = null;

		Integer id = 0;

		try {

			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			id = (Integer) session.save(faq);

			tx.commit();

			return id;

		} catch (Exception e) {

			tx.rollback();
			e.printStackTrace();
			return 0;

		} finally {

			session.close();

		}

	}

	public String doDeleteIdea(idea idea) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;

		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			session.delete(idea);
			tx.commit();
			return "success";
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return "fail";
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public List<com.model.idea> doUpdateUserIdea(Integer id) {
		// TODO Auto-generated method stub
		Session session = sessionfactory.openSession();

		try {

			List<idea> ideas = session.createCriteria(proposal.class).add(Restrictions.eq("id", id)).list();

			return ideas;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	public List<investor> doCollectData(investor investor) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;
		
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			List<investor> loggedIn = session.createCriteria(investor.class)
					.add(Restrictions.eq("email", investor.getEmail()))
					.add(Restrictions.eq("password", investor.getPassword())).list();

			tx.commit();
			return loggedIn;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public List<entreprenure> doCollectData(entreprenure entereprenure) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;
		
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			List<entreprenure> loggedIn = session.createCriteria(entreprenure.class)
					.add(Restrictions.eq("email", entereprenure.getEmail()))
					.add(Restrictions.eq("password", entereprenure.getPassword())).list();

			tx.commit();
			return loggedIn;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public List<investor> verifyEmailInvestor(String email) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;
		
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			List<investor> loggedIn = session.createCriteria(entreprenure.class)
					.add(Restrictions.eq("email", email))
					.list();

			tx.commit();
			return loggedIn;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public List<com.model.idea> doLoadSpecificIdea(idea idea) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;
		
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			List<idea> loggedIn = session.createCriteria(idea.class)
					.add(Restrictions.eq("email", idea.getEmail())).list();

			tx.commit();
			return loggedIn;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public List<com.model.proposal> doLoadSpecificProposal(proposal proposal) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;
		
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			List<proposal> loggedIn = session.createCriteria(proposal.class)
					.add(Restrictions.eq("email", proposal.getEmail())).list();

			tx.commit();
			return loggedIn;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public List<investor> doLoadInvestorNearMe(String city) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;
		
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			List<investor> loggedIn = session.createCriteria(investor.class)
					.add(Restrictions.eq("address", city)).list();

			tx.commit();
			return loggedIn;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
			// TODO: handle exception
		} finally {
			session.close();
		}
	}

	public List<entreprenure> doLoadEntreprenureNearMe(String city) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;
		
		try {
			session = sessionfactory.openSession();
			tx = session.beginTransaction();

			List<entreprenure> loggedIn = session.createCriteria(entreprenure.class)
					.add(Restrictions.eq("address", city)).list();

			tx.commit();
			return loggedIn;
		} catch (Exception e) {
			tx.rollback();
			e.printStackTrace();
			return null;
			// TODO: handle exception
		} finally {
			session.close();
		}
		
	}

}
