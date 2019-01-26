const fetch = require('node-fetch');

fetch('https://min-api.cryptocompare.com/data/price?fsym=BTC&tsyms=USD')
	.then(res => res.json())
	.then(json => console.log(` $${String(json.USD).split('.')[0]}`))
	.catch(() => 'Unknown');