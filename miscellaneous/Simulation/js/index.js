function generateRandom(a, c, m, seed) {
	let sequence = [];
	for (let i = 0; i <= c; i++) {
		setTimeout(() => {
			console.log(
				`X${i + 1} = (${a} * ${seed} + ${c}) mod ${m} = ${(a * seed + c) % m}`
				);
				seed = (a * seed + c) % m;
				sequence.push(seed);
		}, i * 1000);
	}
	setTimeout(() => {
		console.log(`The generated sequence is, [${sequence}]`);
	}, (c + 1) * 1000);
}

generateRandom(5, 7, 8, 4);
