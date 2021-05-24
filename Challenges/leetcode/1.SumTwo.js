/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Return Index of two numbers whose sum is equal to given target
*	Samples : ([1,2,3,4],5)->index[0,3]
*	Observe : 
*	Reference Link : https://leetcode.com/problems/two-sum/
                    https://baffinlee.com/leetcode-javascript/problem/two-sum.html
*****************************************************/

/* Hint 1 -  Method 1

A really brute force way would be to search for all possible pairs of numbers but that would be too slow. Again, it's best to try out brute force solutions for just for completeness. It is from these brute force solutions that you can come up with optimizations. */

var checkStatus = (nums, target) => {
    if (nums.length<1) {
        return -1
    }
    var arrayLength=nums.length
    for (let i = 0; i < arrayLength-1; i++) {
        for (let j = i + 1; j < arrayLength; j++) {
            if ((nums[i]+nums[j]==target)) {
                // console.log([i, j])
                return [i,j]
            }
        }
    }
    return -1
}

function sumTwo(nums, target) {
    result = checkStatus(nums, target)
    result !=-1 ? console.log(`Found Target Sum ${target} in Array ${nums} at Index : `,result):console.log("Target Sum not found");;
}


sumTwo([2,7,11,15],9)
sumTwo([1, 3, 4], 5)
sumTwo([1, 2, 3], 4)
sumTwo([3, 3], 6)
sumTwo([3, 2, 4], 6)
sumTwo([3, 4], 6)




// Method 2
var checkStatus = (nums, target) => {

    if (nums.length<1  ) {
        return -1
    }
    var arrayLength=nums.length
    for (let i = 0; i < arrayLength - 1; i++) {
        findNum = target - nums[i];
        if (nums.indexOf(findNum) != -1) {
            return [i,nums.indexOf(findNum)]
        }
    }
    return -1
}

function sumTwo(nums, target) {
    result = checkStatus(nums, target)
    result !=-1 ? console.log(`Found Target Sum ${target} in ${nums} Array at Index : `,result):console.log(`Target Sum ${target} NOTFOUND in ${nums} Array `);;
}

sumTwo([7, 4, 1], 5)
sumTwo([1, 1, 3], 4)
sumTwo([1, 5, 4, 7, 2], 12)
sumTwo([], 4)
sumTwo([3, 2, 4], 6)
sumTwo([3, 4], 6)