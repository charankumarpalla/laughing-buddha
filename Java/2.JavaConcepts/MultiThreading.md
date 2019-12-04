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

What are daemon threads used for?
---

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

here we can see how the priority 
## Thread Pool
## Thread Group
## 
## 
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