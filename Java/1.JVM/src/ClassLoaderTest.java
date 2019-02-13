import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Java program to demonstrate How ClassLoader works in Java,
 * in particular about visibility principle of ClassLoader.
 *
 * @author Javin Paul
 */

public class ClassLoaderTest {
  
    public static void main(String args[]) {
        try {          
            //printing ClassLoader of this class
            System.out.println("ClassLoaderTest.getClass().getClassLoader() : "
                                 + ClassLoaderTest.class.getClassLoader());

          
            //trying to explicitly load this class again using Extension class loader
            Class.forName("test.ClassLoaderTest", true 
                            ,  ClassLoaderTest.class.getClassLoader().getParent());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ClassLoaderTest.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}




// ClassLoaderTest.getClass().getClassLoader() : sun.misc.Launcher$AppClassLoader@6d06d69c
// Feb 11, 2019 6:59:17 AM ClassLoaderTest main
// SEVERE: null
// java.lang.ClassNotFoundException: test.ClassLoaderTest
// 	at java.net.URLClassLoader.findClass(URLClassLoader.java:381)
// 	at java.lang.ClassLoader.loadClass(ClassLoader.java:424)
// 	at java.lang.ClassLoader.loadClass(ClassLoader.java:357)
// 	at java.lang.Class.forName0(Native Method)
// 	at java.lang.Class.forName(Class.java:348)
// 	at ClassLoaderTest.main(ClassLoaderTest.java:21)