let timer = document.getElementById("timer");
let start = document.getElementById("start");
let stop = document.getElementById("stop");
let reset = document.getElementById("reset");

let milliseconds = 0;
let seconds = 0;
let minutes= 0;
let hours = 0;

let timerID = null;

function stopWatch() {
  milliseconds++;
  if(milliseconds/10 == 1) {
    seconds++;
    milliseconds = 0;
    if(seconds/60 == 1) {
      minutes++;
      seconds = 0;
      if(minutes/60 == 1) {
        hours++;
      }
    }
  }
  
  timer.innerHTML = hours + ":" + minutes + ":" + seconds + ":" + milliseconds
}

  start.addEventListener("click", function() {
  timerID = setInterval(stopWatch, 100);
  start.disabled = true;
  stop.disabled = false;
  reset.disabled = false;
})

stop.addEventListener("click", function() {
  clearInterval(timerID);
  stop.disabled = true;
  start.disabled = false;
  reset.disabled = false;
})

reset.addEventListener("click", function() {
  clearInterval(timerID);
  timer.innerHTML = "0:0:0:0";
  stop.disabled = true;
  reset.disabled = true;
  start.disabled = false;
  milliseconds = 0;
  seconds = 0;
  minutes = 0;
  hours = 0;
})