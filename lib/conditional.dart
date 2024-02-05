//Conditional Programming.......

main () {

  var a =  500;
  var b = 50;

  if(a>200 && b<10){
    print("Block 1");
  } else {
    print("Block 2");
  }

  if(a>200 && b>100){
    //cond 1 and con 2 are true
    print("Block 1");
      // When both if  are true
  }else if(a<50) {
    //cond 2 if true
    print("Block 2");
  }else if(a<80) {
    //cond 3 if true
    print("Block 3");
  } else if(a<80) {
    //cond 3 if true
    print("Block 4");
  }else  {
    //all cond are false
    print("BLOCK ELSE");
  }

}




/*main1 () {

  var a = 500;
  var b = 50;

  if(a>200 && b<10){
    print("Block1");
  } else {
    print("Block 2");
  }

  if(a>200 && b>100){
    // Conditional 1 and conditional 2 are true
    print("Block 1");
    // When both if are true
  } else if(a<50) {
    // conditional 2 if true
    print("Block 2");
  }else if(a<80){
    // conditional 3 if true
    print("Block 3");
  } else if(a<80) {
    // conditional 3 if true
    print("Block 4");
  } else {
    // all Conditional are false
    print("BLOCK ELSE");
  }

}*/
