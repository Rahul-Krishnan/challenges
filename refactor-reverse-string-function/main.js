/* jshint esversion: 6 */
let reverseString = (word) => {
  let result = '';
  word.split('').forEach(unshift = (letter) => {
    result = `${letter}${result}`;
  });
  return result;
};

// Test the reverseString function, and print results to the console.
let words = ['racecar', 'Andy', 'boolean', 'redrum'];
let reversedWords = ['racecar', 'ydnA', 'naeloob', 'murder'];

words.forEach(checkReverse = (word, index) => {
  let reversedWord = reverseString(word);
  let result = (reversedWord == reversedWords[index]);

  let outputString = `The reverse of ${word} is: ${reversedWord}.\n${result}\n\n`;

  console.log(outputString);
});
