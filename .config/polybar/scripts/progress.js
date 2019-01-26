const { execSync } = require('child_process');
// TODO: Bash script
const output = execSync('progress -q').toString().split('\n')[1];
console.log(output ? output : '');