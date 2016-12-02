var reverseString = function(word) {
  var result = '';
  for (var i = 0; i < word.length; i++) {
    result = word[i] + result;
  }
  return result;
}

// Test the reverseString function, and print results to the console.
var words = ['racecar', 'Andy', 'boolean', 'redrum'];
var reversedWords = ['racecar', 'ydnA', 'naeloob', 'murder'];

for (var i = 0; i < words.length; i++) {
  var word = words[i];
  var reversedWord = reverseString(word);
  var result = (reversedWord == reversedWords[i]);

  var outputString = 'The reverse of "' + word + '" is: ';
  outputString += reversedWord + '.';
  outputString += '\n' + result + '\n\n';

  console.log(outputString);
}
