/* jshint esversion: 6 */
reduceString = (str, amount) => {
  let strArrayOne = str.split('');
  let strArrayTwo = str.split('');
  let letterCount = 0;
  for (let letter of strArrayOne) {
    for (let alphabet of strArrayTwo) {
      if (letter === alphabet) {
        letterCount++;
      }
      else {
        letterCount = 0;
      }
      if (letterCount > amount) {
        strArrayTwo.splice(strArrayTwo.indexOf(alphabet), 1);
        letterCount--;
      }
    }
    letterCount = 0;
  }
  return strArrayTwo.join('');
};

reverseString = (str) => {
  let length = str.length;
  let outputStringArray = [];
  for (i=length-1; i > -1 ; i--) {
    outputStringArray.push(str[i]);
  }
  return outputStringArray.join('');
};
