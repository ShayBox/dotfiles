const { execSync } = require('child_process');
// TODO: Bash script
const statusLines = execSync('windscribe status').toString().split('\n');
const status = statusLines[2].split(' ')[0];
const address = statusLines[1].split(' ')[1];

const accountLines = execSync('windscribe account').toString().split('\n');
const bandwidth = accountLines[2].split(': ')[1];

console.log(status === 'CONNECTED' ? `${address}: ${bandwidth}` : '');