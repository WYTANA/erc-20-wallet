require("@nomicfoundation/hardhat-toolbox")

module.exports = {
  solidity: "0.8.9",
  paths: {
    sources: "./contracts",
    artifacts: "./src/artifacts",
  },
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {
      chainId: 1337,
    },
  },
  settings: {
    optimizer: {
      enabled: true,
      runs: 200,
    },
  },
}
