// your code, here
answer = prompt("At what temperature on the Celsius scale does water freeze?");

let result = document.getElementById("result");

if (answer == 0) {
  result.innerHTML = "That's right! Congratulations!";
}
else {
  result.innerHTML = "I'm sorry, that's wrong. Go back to school.";
}
