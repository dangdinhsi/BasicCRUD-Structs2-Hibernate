package util;

import entity.Student;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    private static final SessionFactory ourSessionFactory;

    static {
        try {
            ourSessionFactory = new Configuration().
                    configure("hibernate.cfg.xml").
                    buildSessionFactory();
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static Session getSession() throws HibernateException {
        return ourSessionFactory.openSession();
    }



    // Hàm main để test
    public static void main(final String[] args) throws Exception {
        final Session session = getSession();
        Transaction transaction = null;
        try {

            transaction = session.beginTransaction();
            Student student = new Student();
            student.setName("dang dinh si");
            student.setRollnumber("d00474");
            student.setEmail("siddd00474@fpt.edu.vn");
            session.save(student);
            System.out.println("save thanh cong!!!!");
            transaction.commit();
            }
        catch (Exception ex){
            if(transaction!=null){
                transaction.rollback();
            }
        } finally {
            session.close();
        }
    }
    // Hàm main để test
}
