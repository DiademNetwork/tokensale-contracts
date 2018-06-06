const Tokensale = artifacts.require("Tokensale");

const start = 1528347600; // '2018-6-7 08:00:00'
const end = 1528365600; // '2018-6-7 13:00:00'
const rate = 2000; // 75% discount
const wallet = "0xA6279eF0c0C4BEa836E7e22AcC445f74BEa33CbD";
const token = "0x0e9030636b73858ad93fcbd5e1e783d5c4de1a5c";

module.exports = function(deployer, network, accounts) {
	deployer.deploy(Tokensale, start, end, rate, wallet, token);
}