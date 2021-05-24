/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Get count of characters in a string
*	Samples "charan"
*	Result Expected : {"c":1,"h":1,"a":2,"r":1,"n":1}
*	Reference Link : 
*	Example  : 
*****************************************************/

str = "charan"
result = {}

for (var char of str) {
    if (/[a-z0-9]/.test(char)) {
        if (result[char]>0) {
            result[char]++
        } else {
            result[char] = 1
        }
    }
}
console.log(result);

/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Usage of map
*	Samples 
*	Result Expected : 
*	Reference Link : 
*	Example  : 
*****************************************************/

function table(n) {
    t=""
    for (let i = 1; i < 10; i++) {
        t+=`${n} X ${i} = ${n*i}\n`
    }
    return t
}

tables = [2, 3, 4].map(table)
console.log(tables);
console.log(tables[0]);


/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Reverse a string
*	Samples : "charan" -> "narahc"
*	Observe : See how reduceRight function of array used here to make it simple
*	Reference Link : 
*****************************************************/

str = "charan".split('').reduceRight((rev, a) => rev += a, "")
console.log(str);


/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Another approach for reversing a string 
*	Samples : 
*	Observe : 
*	Reference Link : 
*****************************************************/

rev=[]
function reverse(a) {
    rev.unshift(a)   
}
"charan".split('').map(reverse)
console.log(rev.join(''));


/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Value Assignment deep copy or reference check below
*	Samples : 
*	Observe : see how = copies the content, basically just references or dones't create new instead referes to addrs of old
*	Reference Link : 
*****************************************************/

var str = "kiran".split('')
s = "kiran".split('')
// s=str // check if this has given instead of above s="kiran".split('')
console.log(str);
rv=""
str.forEach(char => {
    console.log(char);
    rv+=s.pop() 
});
console.log(rv);




/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Implement a Queue using Array methods in JS
*	Samples : 
*	Observe : See How COnstructor & prototyrp used
*	Reference Link : https://www.javascripttutorial.net/javascript-queue/   
*****************************************************/

function Queue() {
    this.elements=[]
}

Queue.prototype.enqueue = function(e) {
    return this.elements.push(e)
}

Queue.prototype.dequeue = function (e) {
    return this.elements.shift()
}

Queue.prototype.isEmpty = function ()  {
   return  this.elements.length==0
}

Queue.prototype.peek = function (e) {
    return !this.isEmpty() ? this.elements[0]:undefined
}

Queue.prototype.length = function (){
    return this.elements.length
}

let q = new Queue()
console.log(q);

for (let i = 27; i < 77; i++) {
    q.enqueue(i)
}

console.log(q.length());

console.log(q.peek());

while (!q.isEmpty()) {
    console.log(q.dequeue());
}
console.log(q.length());



/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Simple sort using sort()
*	Samples : 
*	Observe : How the callback function useful in sorting ascending or descending
*	Reference Link : https://www.javascripttutorial.net/javascript-array-sort/
*****************************************************/

a = [22, 2, 3, 4, 10, 20, 30]
console.log(a.sort())
a.sort((a, b) => a-b)
console.log(a);



let employees = [
    {name: 'John', salary: 90000, hireDate: "July 1, 2010"},
    {name: 'David', salary: 75000, hireDate: "August 15, 2009"},
    {name: 'Ana', salary: 80000, hireDate: "December 12, 2011"}
];
console.table(employees.sort((a, b) => a.salary - b.salary));


/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Unlimited Arguments function
*	Samples : 
*	Observe : see the `arguments` word and how it works
*	Reference Link : 
*****************************************************/

function add() {
       let sum = 0;
    for (let i = 0; i < arguments.length; i++) { // <- look at how argument used here
        sum += arguments[i];
    }
    return sum;
}
console.log(add(1));               // 1
console.log(add(1, 2, 3));          // 6 
console.log(add(1, 2, 3,4,5));      // 15



/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Exxplain hw call back works
*	Samples : 
*	Observe : with and without call back
*	Reference Link : 
*****************************************************/

// Without callback made Asynchronous calls
let url = "https://www.google.com"

function download(url) {
    setTimeout(() => {
        console.log("Downloading ",url);
    }, 3000);
}

function process(url) {
    console.log("Processing Url...");
    
}
download(url)
process(url)     // process happens even before download which is wrong

// Solution : With callback made synchronous calls
let url = "https://www.google.com"

function download(url,callback) {
    setTimeout(() => {
        console.log("Downloading ", url);
        callback(url)
    }, 3000);
}

function process(url) {
    console.log("Processing Url..."); 
}
download(url, process)




/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : The Best Example for Call back
*	Samples : 
*	Observe : Observer How Call back happens when a event happens
*	Reference Link : 
*****************************************************/

function downlod(url, success, failure) {
    setTimeout(() => {
        // script to download the picture here
        console.log(`Downloading ${url} ...`);
        // over simplification
        let error = url.length === 0 || !url; 
        // call the failure or success callback
        error ? failure(url) :  success(url);
    }, 3000);
}

downlod('',
    function(picture) {
        console.log(`Processing the picture ${picture}`);
    },
    function(picture) {
        console.log(`Handling error...`);
    }
);



/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Counter construct
*	Samples : 
*	Observe : See how this has different scopes in program
*	Reference Link : 
*****************************************************/

// call the forEach() method on the numbers array. In the callback function, add the element to the sum variable and call the increase() method of the counter object. Notice that the counter object is referred to as this inside the callback function.

function Counter() {
    this.count = 0;
    let self = this;        // understand this ??

    return {
        count:5,
        increase: function () {
            self.count++        // check what happens: try `this` instead of self
        },
        current: function () {
            return self.count  // check what happens: try `this` instead of self
            
        },
        reset: function () {
            self.count=0         // check what happens: try `this` instead of self
        }
    }
}

var counter = new Counter();
var numbers = [1, 2, 3];
var sum = 0;
numbers.forEach(function (e) {
    sum += e;
    this.increase();
}, counter);

console.log(sum); // 6
console.log(counter.current()); 