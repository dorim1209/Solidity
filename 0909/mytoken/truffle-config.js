var HDWalletProvider = require("truffle-hdwallet-provider");
require('dotenv').config();
 
var infura_apikey = process.env.API_KEY;
var mnemonic = process.env.MNEMONIC;
 
console.log("infura_apikey = ", infura_apikey);
console.log("mnemonic = ", mnemonic);
 
module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
    ropsten: {
      provider: new HDWalletProvider(mnemonic, "https://ropsten.infura.io/"+infura_apikey),
      network_id: 3
    }
  }
};
