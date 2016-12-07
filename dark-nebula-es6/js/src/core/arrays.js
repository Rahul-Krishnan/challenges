/* jshint esversion: 6 */
removeWithoutCopy = (arr, item) => {
  for(i = 0; i < arr.length; i++) {
    if (arr[i] == item) {
      arr.splice(i, 1);
      i--;
    }
    else {
    }
  }
  return arr;
};

append = (arr, item) => {
  arr.push(item);
  return arr;
};

truncate = (arr) => {
  arr.pop();
  return arr;
};

prepend = (arr, item) => {
  arr.unshift(item);
  return arr;
};

curtail = (arr) => {
  arr.shift();
  return arr;
};

concat = (arr1, arr2) => {
  let arr3 = arr1.concat(arr2);
  return arr3;
};

insert = (arr, item, index) => {
  arr.splice(index, 0, item);
  return arr;
};

count = (arr, item) => {
  let n = 0;
  arr.forEach((element) => {
    if (item == element) {
      n++;
    }
    else {
    }
  });
  return n;
};

duplicates = (arr) => {
  let dupes = [];
  arr.forEach((element) => {
    if (count(arr, element) > 1 && count(dupes, element)===0) {
      dupes.push(element);
    }
    else {
    }
  });
  return dupes;
};

square = (arr) => {
  let squares = [];
  arr.forEach((element) => {
    squares.push(Math.pow(element, 2));
  });
  return squares;
};

findAllOccurrences = (arr, item) => {
  let indices = [];
  arr.forEach((element, index) => {
      if (element === item) {
        indices.push(index);
      }
  });
  return indices;
};
