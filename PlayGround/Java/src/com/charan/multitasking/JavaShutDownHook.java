package com.charan.multitasking;

class MyThread extends Thread {
    public void run() {
        System.out.println("Interrupt Signal Received.....shut down hook task completed..");
    }
}

public class JavaShutDownHook {
    public static void main(String[] args) {
        MyThread s = new MyThread();
        Runtime r = Runtime.getRuntime();
        r.addShutdownHook(s);

        System.out.println("Now main sleeping... press ctrl+c to exit");
        try{Thread.sleep(3000);}catch (Exception e) {}
        System.out.println("Main Thread Exiting");
    }
}
