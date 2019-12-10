package com.charan.multitasking;

public class ThreadExtend extends Thread{


    public void run(){
        System.out.println("Thread Name :"+Thread.currentThread().getName());
        for (int i = 0; i < 5; i++) {
            System.out.println(Thread.currentThread().getName()+" : "+Thread.currentThread().getPriority()+ " : "+i);
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

        }
    }
    public static void main(String args[]) throws InterruptedException {
        System.out.println("Thread Name :"+Thread.currentThread().getName());
        ThreadExtend t1 = new ThreadExtend();
        ThreadExtend t2 = new ThreadExtend();
        ThreadExtend t3 = new ThreadExtend();
        ThreadExtend t4 = new ThreadExtend();
        ThreadExtend t5 = new ThreadExtend();
        ThreadExtend t6 = new ThreadExtend();
        t6.setPriority(10);

        t6.start();
        t6.join();
//        t1.setName("Charan");
        t1.start();
//        t2.setName("Kiran");
        t2.start();
        t2.join();

        t3.start();
        t4.start();
        t4.join();
        t5.start();
        t5.join();



    }
}