module.exports = {
  networks: {
    development: {
      host: 'localhost',
      port: 7545,
      network_id: '*', // eslint-disable-line camelcase
	  gas: 2000000,
    },
    ropsten: {
      host: "localhost",
      port: 8545,
      network_id: 3,
      gas: 4700000
    }
  },
};
