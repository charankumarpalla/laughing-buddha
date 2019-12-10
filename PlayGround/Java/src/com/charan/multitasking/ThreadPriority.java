package com.charan.multitasking;


class NewThread extends Thread{
    public long count;
    public NewThread(int Priority) {
        setPriority(Priority);
        start();
    }

    public void run(){
        for (;;) {
            count++;
        }
    }
}
class ThreadPriority{
    public static void main(String[] args) {
        NewThread t1 = new NewThread(1);
        NewThread t2 = new NewThread(4);
        NewThread t3 = new NewThread(10);

        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
            System.out.println("Main Thread Exited");
            e.printStackTrace();
        }

        t1.stop();
        t2.stop();
        t3.stop();

        System.out.println("Thread t1 Count : "+t1.count);
        System.out.println("Thread t2 Count : "+t2.count);
        System.out.println("Thread t3 Count : "+t3.count);
    }
}



//
//class A extends Thread{
//    public void run(){
//        for (int i = 0; i < 5; i++) {
//            System.out.println("A : "+i);
//            try {
//                Thread.sleep(500);
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }
//        }
//        System.out.println("-----> A FINISHED");
//    }
//}
//
//class B extends Thread{
//    public void run(){
//        for (int i = 0; i < 5; i++) {
//            System.out.println("B : "+i);
//            try {
//                Thread.sleep(500);
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }
//        }
//        System.out.println("-----> B FINISHED");
//    }
//}
//
//class C extends Thread{
//    public void run(){
//        for (int i = 0; i < 5; i++) {
//            System.out.println("C : "+i);
//            try {
//                Thread.sleep(500);
//            } catch (InterruptedException e) {
//                e.printStackTrace();
//            }
//        }
//        System.out.println("-----> C FINISHED");
//    }
//}
//public class ThreadPriority extends Thread{
//    public static void main(String[] args) throws InterruptedException {
//
//        A a = new A();
//        B b = new B();
//        C c = new C();
//
//
//
//        try
//        {
////            System.out.println("Hello");
////            Thread.sleep(1);
//            a.setPriority(1);
//            a.start();
//            a.join();
//            b.start();
//            c.start();
//
////            a.join();b.join();c.join();
//        }
//        catch(InterruptedException e){}
//        System.out.println("Main Thread Finished");
//    }
//}
