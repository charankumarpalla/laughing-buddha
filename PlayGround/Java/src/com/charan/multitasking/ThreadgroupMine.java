package com.charan.multitasking;

class MyThread extends Thread{

    public MyThread(ThreadGroup tg){
        start();
    }
    @Override
    public void run() {
        super.run();System.out.println("Hello");
    }
}
class ThreadgroupMine {
    public static void main(String[] args) {
        


    }
}