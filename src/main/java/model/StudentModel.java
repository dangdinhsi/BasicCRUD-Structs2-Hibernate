package model;

import entity.Student;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

import java.util.ArrayList;
import java.util.List;

public class StudentModel {

    public boolean saveStudent(Student student){
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSession()) {
            transaction = session.beginTransaction();
            session.saveOrUpdate(student);
            transaction.commit();
            return true;
        }catch (Exception ex){
            if(transaction !=null){
                transaction.rollback();
            }
            return false;
        }
    }

    public List<Student> listStudent(){
        List<Student> studentList = new ArrayList<>();
        try(Session session = HibernateUtil.getSession()) {
            studentList =session.createQuery("from Student",Student.class).list();
        }catch (Exception ex){
            System.out.println("Can not findAll student");
        }
        return studentList;
    }

    public Student findById(long id){
        Transaction transaction = null;
        try(Session session =HibernateUtil.getSession()) {
            transaction = session.beginTransaction();
            Student student = session.get(Student.class,id);
            transaction.commit();
            return student;
        }catch (Exception ex){
            if(transaction !=null){
                transaction.rollback();
            }
            System.out.println("Cannot findById...");
            return null;
        }
    }

    public void deleteStudent(long id){
        Transaction transaction = null;
        try(Session session = HibernateUtil.getSession()) {
            transaction =session.beginTransaction();
            Student student = session.get(Student.class,id);
            if(student!=null){
                session.delete(student);
                System.out.println("delete success!!");
            }
            transaction.commit();
        }catch (Exception ex){
            if(transaction!=null){
                transaction.rollback();
            }
        }
    }

}
