package hibernate;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory tmrSessionFactory;

    static {

        try {
//            tmrSessionFactory = new Configuration().configure("xml/parim.cfg.xml").buildSessionFactory();
            Configuration configuration = new Configuration().configure("xml/parim.cfg.xml");
            StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
            applySettings(configuration.getProperties());
            tmrSessionFactory = configuration.buildSessionFactory(builder.build());
        } catch (HibernateException ex) {
//            Logger.getLogger("app").log(Level.WARNING, ex.getMessage());
        	ex.printStackTrace();
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return tmrSessionFactory;
    }

    /* getters and setters here */
    
    
    

}