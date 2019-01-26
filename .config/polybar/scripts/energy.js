const { Client } = require('tplink-smarthome-api');

new Client().getDevice({ host: '192.168.0.5' })
	.then(async device => {
		const stats = await device.emeter.getRealtime();
		console.log(` A: ${stats.current.toFixed(1)} W: ${stats.power.toFixed(0)}`);
		console.log(stats);
	})
	.catch(() => 'Error');
