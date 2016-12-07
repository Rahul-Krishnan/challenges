/* jshint esversion: 6 */
isPrime = (num) => {
  for(let i = 2; i < num; i++) {
    if(num%i === 0) {
      return false;
    }
  }
  return num >1;
};

arraySum = (array) => {
  let sum = 0;
  array.forEach((element) => {
    sum = sum + element;
  });
  return sum;
};

fizzBuzz = (num) => {
  if (num === null) {
    return null;
  }
  else if (num%3===0 && num%5===0) {
      return "fizzbuzz";
  }
  else if (num%3===0) {
    return "fizz";
  }
  else if (num%5===0) {
    return "buzz";
  }
  else {
    return num;
  }
};

  // write a function that receives a number as its argument;
  // if the number is divisible by 3, the function should return 'fizz';
  // if the number is divisible by 5, the function should return 'buzz';
  // if the number is divisible by 3 and 5, the function should return
  // 'fizzbuzz';
  //
  // otherwise the function should return the number, or false if no number
  // was provided or the value provided is not a number
