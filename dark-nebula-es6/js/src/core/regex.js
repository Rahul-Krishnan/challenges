/* jshint esversion: 6 */
containsNumber = (string) => {
  let regex = /\d/;
  let found = string.match(regex);
  if (found === null) {
    return false;
  }
  else {
    return true;
  }
};

containsRepeatingLetter = (string) => {
  let regex = /([a-zA-Z])\1/;
  let found = string.match(regex);
  if (found === null) {
    return false;
  }
  else {
    return true;
  }
};

endsWithVowel = (string) => {
  let regex = /[aeiouAEIOU]\b/;
  let found = string.match(regex);
  if (found === null) {
    return false;
  }
  else {
    return true;
  }
};

captureThreeNumbers = (string) => {
  let regex = /\d{3}/;
  let found = string.match(regex);
  if (found === null) {
    return false;
  }
  else {
    return found[0];
  }
};

matchesPattern = (string) => {
  let regex = /\d{3}[-]\d{3}[-]\d{4}/;
  let found = string.match(regex);
  if (found === null) {
    return false;
  }
  else {
    return true;
  }
};

isUSD = (string) => {
  let regex = /\d/;
  let found = string.match(regex);
  if (found === null) {
    return false;
  }
  else {
    return true;
  }
};
