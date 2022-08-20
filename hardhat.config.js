require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();
/** @type import('hardhat/config').HardhatUserConfig */
const rinkebyUrl = process.env.rinkebyRpcUrl;
const rinkebyKey = process.env.rinkebyPrivateKey;
module.exports = {
  defaultNetwork: "hardhat",
  networks: {
    rinkeby: {
      url: rinkebyUrl,
      accounts: [rinkebyKey],
      chainId: 4,
    },
    localhost: {
      url: "http://127.0.0.1:8545",
      chainId: 31337,
      //Thanks hardhat for providing the accounts
    },
  },
  solidity: "0.8.9",
};
