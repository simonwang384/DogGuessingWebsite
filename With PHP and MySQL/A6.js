

    var answer = "";
    var firstTime = true;

    function correctAns() {
      firstTime = false;
      alert("Answer is highlighted in yellow");
      var value1 = document.getElementById("button1").value;
      var value2 = document.getElementById("button2").value;
      var value3 = document.getElementById("button3").value;
      var value4 = document.getElementById("button4").value;

      if (value1 == answer) {
        document.getElementById("button1").style.cssText = "background:yellow";
      } else if (value2 == answer) {
        document.getElementById("button2").style.cssText = "background:yellow";
      } else if (value3 == answer) {
        document.getElementById("button3").style.cssText = "background:yellow";
      } else if (value4 == answer) {
        document.getElementById("button4").style.cssText = "background:yellow";
      }

    }

    window.onload=function(){
      localStorage.questioncount++;
      document.getElementById("display2").innerHTML = "Correct: " + localStorage.correctCount;
      document.getElementById("display3").innerHTML = "Questions: " + localStorage.questioncount;
      
      var button1 = document.getElementById("button1");
      button1.onclick = function() {
        var value1 = document.getElementById("button1").value;
        if(firstTime == true) {
          if (answer == value1) { 
            localStorage.correctCount++;
            alert("You got it right! Move onto the next question");
          } else {
            alert("Wrong");
          }
          firstTime = false;
        }
        document.getElementById("display2").innerHTML = "Correct: " + localStorage.correctCount;
      }

      var button2 = document.getElementById("button2");
      button2.onclick = function() {
        var value2 = document.getElementById("button2").value;
        if(firstTime == true) {
          if (answer == value2) {
            localStorage.correctCount++;
            alert("You got it right! Move onto the next question");
          } else {
            alert("Wrong");
          }
        firstTime = false;
        }
        document.getElementById("display2").innerHTML = "Correct: " + localStorage.correctCount;
      }
  
      var button3 = document.getElementById("button3");
      button3.onclick = function() {
        var value3 = document.getElementById("button3").value;
        if(firstTime == true) {
          if (answer == value3) {
            localStorage.correctCount++;
            alert("You got it right! Move onto the next question");
          } else {
            alert("Wrong");
          }
        firstTime = false;
        }
        document.getElementById("display2").innerHTML = "Correct: " + localStorage.correctCount;
      }

      var button4 = document.getElementById("button4");
      button4.onclick = function() {
        var value4 = document.getElementById("button4").value;
        if(firstTime == true) {
          if (answer == value4) {
            localStorage.correctCount++;
            alert("You got it right! Move onto the next question");
          } else {
            alert("Wrong");
          }
        firstTime = false;
        }
        document.getElementById("display2").innerHTML = "Correct: " + localStorage.correctCount;
      }
    
    }