/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : FInd the Conatiner with most water in it
*	Samples : 
*	Observe : This is basic Brute Force code that i implemented which is not the best approach
*	Conclusion  : This gives correct answer but it takes more time to run
*****************************************************/

/* Hint 1: The aim is to maximize the area formed between the vertical lines. The area of any container is calculated using the shorter line as length and the distance between the lines as the width of the rectangle.
Area = length of shorter vertical line * distance between lines */
var maxContainerWater = (heights) => {
        max=0
    for (let i = 0; i < heights.length-1; i++) {
        for (let j = i; j < heights.length; j++) {
            //smallest number
            height = 0
        
            if (heights[i] < heights[j]) {
                height=heights[i]
            } else {
                height=heights[j]
            }
            area=(j-i)*height
            max=max>area?max:area
        }
    }
    return max
}


console.log(maxContainerWater([4, 3, 2, 1, 4]));
console.log(maxContainerWater([1, 8, 6, 2, 5, 4, 8, 3, 7]));

/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Same method 2
*	Samples : 
*	Observe : 
*	Reference Link : https://baffinlee.com/leetcode-javascript/problem/container-with-most-water.html

* Method 2: 
* Hint : Start with the maximum width container and go to a shorter width container if there is a vertical line longer than the current containers shorter line. This way we are compromising on the width but we are looking forward to a longer length container.
*****************************************************/

var maxContainerWater = (heights) => {
    var l = 0, r = heights.length-1,max=0;
    while (l < r) {
        max=Math.max(max,Math.max(heights[l],heights[r])*(r-l))
        if (heights[l] < heights[r]) {
            l++;
        } else {
            r--;
        }
    }
    return max
}

console.log(maxContainerWater([4, 3, 2, 1, 4]));
console.log(maxContainerWater([1,2,1]));