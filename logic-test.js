const data = ['cook', 'save', 'taste', 'aves', 'vase', 'state', 'map'];

function groupAnagram(data) {
  const result = [];
  const temp = [];

  for (let i = 0; i < data.length; i++) {
    const word = data[i];
    const sortedWord = word.split('').sort().join('');

    if (temp[sortedWord]) {
      temp[sortedWord].push(word);
    } else {
      temp[sortedWord] = [word];
    }
  }

  for (let key in temp) {
    result.push(temp[key]);
  }

  return result;
}

console.log(groupAnagram(data));
