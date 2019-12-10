package com.charan.multitasking;

public class ThreadRunnable implements Runnable {

    public static void main(String[] args) {
        System.out.println();
        ThreadRunnable t1 = new ThreadRunnable();
        Thread t2 = new Thread(t1);
        Thread t3 = new Thread(t1);
        t2.start();
        t3.start();


    }

    @Override
    public void run() {
        for (int i = 0; i < 5; i++) {

            System.out.println(Thread.currentThread().getName() +" : "+ i);
            try {
                Thread.sleep(400);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

        }

    }
}
