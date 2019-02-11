const { execSync } = require('child_process');

const applications = {
  'firefox': 'firefox --new-instance',
  'discord': 'discord'
};

const selection = 
execSync(`echo "${Object.keys(applications).join('\n')}" | dmenu`).toString().replace('\n', '');
execSync(`ssh -X shaybox@server "${applications[selection]}"`);