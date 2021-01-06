function reverse(a){

    for(i=0;i<(a.length/2);i++){
        [a[i],a[a.length-i-1]]=[a[a.length-i-1],a[i]]
    }
    console.log(a)

}


reverse([1,2,3,4,5])
