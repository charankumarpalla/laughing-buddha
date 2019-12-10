
Table of Contents
=================

   * [MultiTasking](#multitasking)
      * [Types of Multitasking](#types-of-multitasking)
      * [LifeCycle](#lifecycle)
      * [Creating Thread](#creating-thread)
      * [Thread Scheduler](#thread-scheduler)
      * [Sleep Thread](#sleep-thread)
      * [Join method](#join-method)
      * [Thread Naming,,](#thread-naming)
      * [Deamon Thread](#deamon-thread)
         * [What are daemon threads used for?](#what-are-daemon-threads-used-for)
      * [Thread Priority](#thread-priority)
      * [Thread Pool](#thread-pool)
      * [Thread Group](#thread-group)
      * [Java Shutdown Hook](#java-shutdown-hook)
         * [When does the JVM shut down?](#when-does-the-jvm-shut-down)
      * [Performing multiple task](#performing-multiple-task)
         * [How to perform single task by multiple threads](#how-to-perform-single-task-by-multiple-threads)
         * [How to perform multiple tasks by multiple threads (multitasking in multithreading)?](#how-to-perform-multiple-tasks-by-multiple-threads-multitasking-in-multithreading)
   * [Thread Scheduler](#thread-scheduler-1)
   * [Reference :](#reference-)
   * [Yet to Read](#yet-to-read)



# MultiTasking

Writing correct programs is hard; writing correct concurrent programs is harder.
There are simply more things that can go wrong in a concurrent program than
in a sequential one. So, why do we bother with concurrency? Threads are an
inescapable feature of the Java language, and they can simplify the development
of complex systems by turning complicated asynchronous code into simpler
straight-line code. In addition, threads are the easiest way to tap the computing
power of multiprocessor systems. And, as processor counts increase, exploiting
concurrency effectively will only become more important.


## Types of Multitasking

## LifeCycle
## Creating Thread
## Thread Scheduler
## Sleep Thread
## Join method
## Thread Naming,, 
## Deamon Thread

Java has a special kind of thread called daemon thread.

* Very low priority.
* Only executes when no other thread of the same program is running.
* JVM ends the program finishing these threads, when daemon threads are the only threads running in a program.

### What are daemon threads used for?

Normally used as service providers for normal threads. Usually have an infinite loop that waits for the service request or performs the tasks of the thread. They can’t do important jobs. (Because we don't know when they are going to have CPU time and they can finish any time if there aren't any other threads running. )

A typical example of these kind of threads is the Java garbage collector.

There's more...

You only call the setDaemon() method before you call the start() method. Once the thread is running, you can’t modify its daemon status.
Use isDaemon() method to check if a thread is a daemon thread or a user thread.


Deamon thread ends when the main thread terminates.

```
public class DeamonThreadTest {

public static void main(String[] args) {

    new WorkerThread(false).start();    //set it to true and false and run twice.

    try {
        Thread.sleep(7500);
    } catch (InterruptedException e) {
        // handle here exception
    }

    System.out.println("Main Thread ending");
    }
   }

   class WorkerThread extends Thread {

    boolean isDeamon;

    public WorkerThread(boolean isDeamon) {
        // When false, (i.e. when it's a user thread),
        // the Worker thread continues to run.
        // When true, (i.e. when it's a daemon thread),
        // the Worker thread terminates when the main
        // thread terminates.
        this.isDeamon = isDeamon;
        setDaemon(isDeamon);
    }

    public void run() {
        System.out.println("I am a " + (isDeamon ? "Deamon Thread" : "User Thread (none-deamon)"));

        int counter = 0;

        while (counter < 10) {
            counter++;
            System.out.println("\tworking from Worker thread " + counter++);

            try {
                sleep(5000);
            } catch (InterruptedException e) {
                // handle exception here
            }
        }
        System.out.println("\tWorker thread ends. ");
    }
}



result when setDeamon(true)
=====================================
I am a Deamon Thread
    working from Worker thread 0
    working from Worker thread 1
Main Thread ending

Process finished with exit code 0


result when setDeamon(false)
=====================================
I am a User Thread (none-deamon)
    working from Worker thread 0
    working from Worker thread 1
Main Thread ending
    working from Worker thread 2
    working from Worker thread 3
    working from Worker thread 4
    working from Worker thread 5
    working from Worker thread 6
    working from Worker thread 7
    working from Worker thread 8
    working from Worker thread 9
    Worker thread ends. 

Process finished with exit code 0
```


> A daemon thread is a thread that does not prevent the JVM from exiting when the program finishes but the thread is still running. An example for a daemon thread is the garbage collection.
> 
## Thread Priority

```
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
            NewThread t2 = new NewThread(6);
            NewThread t3 = new NewThread(10);

            try {
                Thread.sleep(2000);
            } catch (InterruptedException e) {
                System.out.println("Main Thread Exited");
                e.printStackTrace();
            }

            System.out.println("Thread t1 Count : "+t1.count);
            System.out.println("Thread t2 Count : "+t2.count);
            System.out.println("Thread t3 Count : "+t3.count);
        }
    }
```

**Output :**

```

Thread t1 Count : 1491146343
Thread t2 Count : 1490836110
Thread t3 Count : 1491765711

```


## Thread Pool

Java Thread pool represents a group of worker threads that are waiting for the job and reuse many times.

In case of thread pool, a group of fixed size threads are created. A thread from the thread pool is pulled out and assigned a job by the service provider. After completion of the job, thread is contained in the thread pool again.

```

package com.charan.multitasking;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

class  WorkerThread implements Runnable{

    String message;
    public WorkerThread(String s){
        this.message = s;
    }
    public void run() {
        System.out.println(Thread.currentThread().getName()+" (Start) message = "+message);
        try {  Thread.sleep(2000);  } catch (InterruptedException e) { e.printStackTrace(); }
        System.out.println(Thread.currentThread().getName()+" (End)");//prints thread name
    }
}

class ThreadPool {
    public static void main(String[] args) {
        ExecutorService executor =  Executors.newFixedThreadPool(3);
        for (int i = 0; i < 10; i++) {
            Runnable worker = new WorkerThread(" : " + i);
            executor.execute(worker);
        }
        executor.shutdown();

        while (!executor.isTerminated()){}
        System.out.println("Finished all threads");
    }
}


```

Here we can see though we are trying to create ten thread using for loop...its always 3 same Threads are active and serving the action.

```
    pool-1-thread-1 (Start) message =  : 0
    pool-1-thread-3 (Start) message =  : 2
    pool-1-thread-2 (Start) message =  : 1
    pool-1-thread-3 (End)
    pool-1-thread-1 (End)
    pool-1-thread-2 (End)
    pool-1-thread-2 (Start) message =  : 5
    pool-1-thread-3 (Start) message =  : 3
    pool-1-thread-1 (Start) message =  : 4
    pool-1-thread-3 (End)
    pool-1-thread-1 (End)
    pool-1-thread-2 (End)
    pool-1-thread-1 (Start) message =  : 7
    pool-1-thread-3 (Start) message =  : 6
    pool-1-thread-2 (Start) message =  : 8
    pool-1-thread-1 (End)
    pool-1-thread-1 (Start) message =  : 9
    pool-1-thread-2 (End)
    pool-1-thread-3 (End)
    pool-1-thread-1 (End)
    Finished all threads
```

## Thread Group 


Java provides a convenient way to group multiple threads in a single object. In such way, we can suspend, resume or interrupt group of threads by a single method call.

> Note: Now suspend(), resume() and stop() methods are deprecated.
Java thread group is implemented by java.lang.ThreadGroup class.

A ThreadGroup represents a set of threads. A thread group can also include the other thread group. The thread group creates a tree in which every thread group except the initial thread group has a parent.

A thread is allowed to access information about its own thread group, but it cannot access the information about its thread group's parent thread group or any other thread groups.

- [ ] https://www.geeksforgeeks.org/java-lang-threadgroup-class-java/

## Java Shutdown Hook

The shutdown hook can be used to perform cleanup resource or save the state when JVM shuts down normally or abruptly. Performing clean resource means closing log file, sending some alerts or something else. So if you want to execute some code before JVM shuts down, use shutdown hook.

### When does the JVM shut down?
The JVM shuts down when:
* user presses ctrl+c on the command prompt
* System.exit(int) method is invoked
* user logoff
* user shutdown etc.

**The addShutdownHook(Thread hook) method**

The addShutdownHook() method of Runtime class is used to register the thread with the Virtual Machine. Syntax:

> public void addShutdownHook(Thread hook){}  

The object of Runtime class can be obtained by calling the `static factory method getRuntime()`. For example:

    Runtime r = Runtime.getRuntime();

> **Factory method**
The method that returns the instance of a class is known as factory method.

```
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
                try{Thread.sleep(1000);}catch (Exception e) {}
                System.out.println("Main Thread Exiting");
            }
        }

```

With no interrupt signal given JVM closses the task at last 
```
Now main sleeping... press ctrl+c to exit
Main Thread Exiting
Interrupt Signal Recived.....shut down hook task completed..
       
```


if ctrl-c pressed
```
Now main sleeping... press ctrl+c to exit
Interrupt Signal Received.....shut down hook task completed..
```

Same example of Shutdown Hook by **annonymous** class

 ```
        r.addShutdownHook(new Thread(){  
        public void run(){  
            System.out.println("shut down hook task completed..");  
            }  
        }  
```
## Performing multiple task

### How to perform single task by multiple threads

If you have to perform single task by many threads, have only one run() method.For example:

```
class TestMultitasking1 extends Thread{  
 public void run(){  
   System.out.println("task one");  
 }  
 public static void main(String args[]){  
  TestMultitasking1 t1=new TestMultitasking1();  
  TestMultitasking1 t2=new TestMultitasking1();  
  TestMultitasking1 t3=new TestMultitasking1();  
  
  t1.start();  
  t2.start();  
  t3.start();  
 }  
}  
```


```
Output:task one
       task one
       task one
```


### How to perform multiple tasks by multiple threads (multitasking in multithreading)?
If you have to perform multiple tasks by multiple threads,have multiple run() methods.For example:


```
    class Simple1 extends Thread{  
    public void run(){  
    System.out.println("task one");  
    }  
    }  
    
    class Simple2 extends Thread{  
    public void run(){  
    System.out.println("task two");  
    }  
    }  
    
    class TestMultitasking3{  
    public static void main(String args[]){  
    Simple1 t1=new Simple1();  
    Simple2 t2=new Simple2();  
    
    t1.start();  
    t2.start();  
    }  
    }  
```


```
Output:task one
       task two
```
## 


> 🤔❓ If you are not extending the Thread class,your class object would not be treated as a thread object. So you need to explicitly create Thread class object.We are passing the object of your class that implements Runnable so that your class run() method may execute.


# Thread Scheduler

# Reference :
- https://hajsoftutorial.com/category/java-multithreading/

# Yet to Read
- https://github.com/LeonardoZ/java-concurrency-patterns
- https://www.callicoder.com/java-concurrency-multithreading-basics/
- Make note of this in readme : https://github.com/volkodavs/java-concurrency
- https://github.com/mkyong/java-concurrency
- :bulb: **Examples/problems** : https://github.com/eugenp/tutorials/tree/master/core-java-modules/core-java-concurrency-advanced
- https://itnext.io/must-read-books-to-learn-java-programming-327a3768ea2f



Book Reading : Java Concurrency In Practice.pdf