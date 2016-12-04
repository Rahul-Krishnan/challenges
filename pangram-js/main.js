/* jshint esversion: 6 */
// test the isPangram() function, and print results to the console.

// define the isPangram() function
let isPangram = (sentence) => {
    // your code, here
  let lowercaseSentence = sentence.toLowerCase();
  let n = 0;
  let alphabets = "abcdefghijklmnopqrstuvwxyz".split("");
  alphabets.some((alphabet) => {
    if (lowercaseSentence.includes(alphabet)) {
      n++;
    }
    else {
      return true;
    }
  });
  if (n == 26) {
    return true;
  }
  else {
    return false;
  }
};

let sentences = [
  { content: 'The quick brown fox jumps over the lazy dog.', pangram: true },
  { content: 'The quick onyx goblin jumps over the lazy dwarf.', pangram: true },
  { content: 'Grumpy wizards make toxic brew for the evil queen and jack.', pangram: true },
  { content: 'Not a pangram', pangram: false },
  { content: '', pangram: false },
];


sentences.forEach((sentence) => {
  let result = isPangram(sentence.content);
  let correct = (result == sentence.pangram);
  console.log(`isPangram gave a ${correct ? '' : 'in'}correct result for: ${sentence.content}`);
});
