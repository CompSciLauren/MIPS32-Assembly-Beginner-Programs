let result = '';
for (let i = 1; i <= 100; i++) {
  if (i == 1) {
    if (i % 3 == 0 && i % 5 == 0) {
      result += 'Fizz Buzz';
    } else if (i % 3 == 0) {
      result += 'Fizz';
    } else if (i % 5 == 0) {
      result += 'Buzz';
    } else {
      result += i;
    }
  } else if (i % 3 == 0 && i % 5 == 0) {
    result += ', Fizz Buzz';
  } else if (i % 3 == 0) {
    result += ', Fizz';
  } else if (i % 5 == 0) {
    result += ', Buzz';
  } else {
    result += ', ' + i;
  }
}

console.log(result);
