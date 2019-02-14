const fetch = require('node-fetch');
const { URLSearchParams } = require('url');

const params = new URLSearchParams({
	key: 'AIzaSyBZfBOBmP9awOClmu2vijYY_xaIcT5okI4',
	part: 'statistics',
});

(async () => {
	// PewDiePie
	const pewdiepie = await fetch(`https://www.googleapis.com/youtube/v3/channels?id=UC-lHJZR3Gqxm24_Vd_AJ5Yw&${params}`)
		.then(res => res.json())
		.then(json => json.items[0].statistics.subscriberCount)
		.catch(() => 0);

	// T-Series
	const tseries = await fetch(`https://www.googleapis.com/youtube/v3/channels?id=UCq-Fj5jknLsUf-MWSy4_brA&${params}`)
		.then(res => res.json())
		.then(json => json.items[0].statistics.subscriberCount)
		.catch(() => 0);

	console.log((pewdiepie - tseries).toLocaleString());
})();