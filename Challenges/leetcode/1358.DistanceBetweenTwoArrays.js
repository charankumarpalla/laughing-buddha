/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Find numbers between two arrays that satify the given condition
*	Samples : 
*	Observe : 
*	Reference Link : 
*       - https://leetcode.com/problems/find-the-distance-value-between-two-arrays/submissions/
*****************************************************/


/**
 * 
 * @param {number[]} arr1 
 * @param {number[]} arr2 
 * @param {number} d 
 * @returns distance
 */

var findTheDistanceValue = (arr1, arr2, d) => {

    distance = 0
    for (let i = 0; i < arr1.length; i++) {
        if (arr2.every((e) => {return Math.abs(arr1[i]-e)>d})) {
            distance++
        }
    }
    return distance
}



// Best Solution

var findTheDistanceValue = (arr1, arr2, d) => {
    return arr1.filter(n1 => arr2.every(n2 => Math.abs(n1 - n2) > d)).length
}