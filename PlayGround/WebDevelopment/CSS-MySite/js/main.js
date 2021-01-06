window.onload = function () {
  console.log(document.getElementById("role").innerText);
  var roles = ["Web", "Cloud", "Mobile App"];
  console.log("Loaded...");
  var i = 0;
  // alert(number);
  //   console.log(document.getElementById("roles").innerHTML);
  setInterval(() => {
    // console.log(roles[i]);
    i++;
    i > 2 ? (i = 0) : (i = i);

    document.getElementById("role").innerText = roles[i];
  }, 1000);
};
