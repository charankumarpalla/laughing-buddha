package com.charan.multitasking;


class ThreadgroupMine implements Runnable{
    @Override
    public void run() {

        System.out.println(Thread.currentThread().getName());

    }

    public static void main(String[] args) throws InterruptedException {
        ThreadGroup tg = new ThreadGroup("group");
        ThreadgroupMine m = new ThreadgroupMine();
        Thread t1 = new Thread(tg,m,"one");
        Thread t2 = new Thread(tg,m,"t2");
        Thread t3 = new Thread(tg,m,"t3");

//        t1.setName("charan");
        t1.start();
//        t1.join();
        t2.start();
//        t2.join();
        t3.start();
//        t3.join();
        tg.list();

    }
}


