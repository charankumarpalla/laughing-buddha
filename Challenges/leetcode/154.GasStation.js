/***************************************************
*	Author : charankumar.palla@gmail.com
*	Context : Gas station - fuel - cost - leet challenges
*	Samples : 
        gas = [1, 2, 3], cost = [3, 2, 1]
        gas = [1, 2, 3], cost = [3, 2, 2]
*	Reference Link : https://xiaoguan.gitbooks.io/leetcode/content/LeetCode/134-gas-station-medium.html
*****************************************************/
/**
 * @param  {number[]} gas
 * @param  {number[]} cost
 * @return number - gives the index of gas station if success
 */
var canCirculateCircuit = (gas, cost) => {
    gasLen = gas.length
    costLen = cost.length
    
    
    // initial check if gas and cost are equal length
    if (gasLen != costLen) {
        return -1
    }
    // gas or cost cant be string or negative
    // check if total gas > total cost
    totalGas = gas.reduce((sum, a) => sum + a, 0)
    totalCost = cost.reduce((sum, a) => sum + a, 0)
    if (totalGas != totalCost) {
        return -1
    }

    // Check if any station can circulate
    var station = 0, dif = 0, tank = 0;
    for (i = 0; i < gasLen; i++) {
        dif += gas[i] - cost[i]
        tank += gas[i] - cost[i]
        if (tank < 0) {
            station++
            tank=0
        }
    }

    
    return dif>=0?station:-1
}

result = canCirculateCircuit([1, 2, 3], [3, 2, 1])
result>=0 ? console.log("Can Circulate Starting from Gas Station : ",result): console.log("Cannot Circulate with the given station gas and cost");

result = canCirculateCircuit([1, 2, 3, 4, 5], [3, 4, 5, 1, 2]);
result>=0 ? console.log("Can Circulate Starting from Gas Station : ",result): console.log("Cannot Circulate with the given station gas and cost");


