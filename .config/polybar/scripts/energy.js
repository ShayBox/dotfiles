const { Client } = require('tplink-smarthome-api');

new Client().getDevice({ host: '192.168.0.4' })
	.then(async device => {
		const stats = await device.emeter.getRealtime();
		console.log(stats.current.toFixed(1));
	})
	.catch(() => 'Error');