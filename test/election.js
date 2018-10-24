var Election = artifacts.require("./Election.sol")

contract("Election", function(accounts){


	it("initalizes with two condidates", function(){
		return Election.deployed().then(function(instance){
			return instance.condidatesCount();
		}).then(function(count){
			assert.equal(count,2);
		});
	});
});