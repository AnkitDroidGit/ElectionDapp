pragma solidity ^0.4.24;

contract Election {
    // Model candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    //Store Accounts that have voted
    mapping(address => bool) public voters;

    //Store Candidates

    //Fetch

    mapping(uint => Candidate) public candidates;

    // Candidate Count Store
    uint public candidatesCount;

    function Election() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote(uint _candidateId) public {

        //record that voter has voted
        voters[msg.sender] = true;

        // update candidate vote count
        candidates[_candidateId].voteCount++;
    }
}