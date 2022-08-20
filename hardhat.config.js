require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  defaultNetwork:"hardhat",
  networks:{
    rinkeby:{
      url:
      accounts:
      chainId:
    }
    localhost:{
      url:"http://127.0.0.1:8545",
      chainId:31337,
      //Thanks hardhat for providing the accounts
    }
  }
  solidity: "0.8.9",
};
