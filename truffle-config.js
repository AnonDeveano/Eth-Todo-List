module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*" // Match any network id
      // from: '0x7299192CD862c9c5345cC47a2Ef24807436009b0'
    }
  },
  solc: {
    optimizer: {
      enabled: true,
      runs: 200
    }
  }
}