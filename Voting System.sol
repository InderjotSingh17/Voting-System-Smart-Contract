// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract VotingSystem{
    address public owner;
    uint public candidatecount;
    struct candidate{
        uint id;
        string name;
        uint votes;
    }
    mapping(uint=>candidate)public candidates;
    mapping(address=>bool)public hasvoted;
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender==owner,"only owner can do this");
        _;
    }
    function addcandidate(string memory name) public onlyOwner{
        candidatecount++;
        candidates[candidatecount]=candidate(candidatecount,name,0);
    }
    function vote(uint candidateid) public{
        require(!hasvoted[msg.sender],"you have already voted");
        require(candidateid>0 && candidateid<=candidatecount,"invalid candidate");
        candidates[candidateid].votes++;
        hasvoted[msg.sender]=true;
    }
    function getresult(uint id)public view returns(uint,string memory,uint){
        candidate memory c=candidates[id];
        return(c.id,c.name,c.votes);
    }
    function totalvotesfor(uint id)public view returns(uint){
        return candidates[id].votes;
    }
}