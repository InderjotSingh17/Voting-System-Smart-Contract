# 🗳️ VotingSystem - A Simple Ethereum Voting Smart Contract

This project implements a basic decentralized voting system using Solidity. It allows an admin (owner) to add candidates and allows users to vote **only once** for a valid candidate. Votes are recorded immutably on the Ethereum blockchain.

## 🚀 Features

- ✅ Only the contract owner can add candidates
- ✅ Voters can vote only once
- ✅ Publicly viewable vote count per candidate
- ✅ Immutable and transparent voting record
- ✅ Candidate and vote results retrievable via functions

---

## 🧾 Smart Contract Overview

### Contract: `VotingSystem`

#### State Variables

| Variable | Type | Description |
|----------|------|-------------|
| `owner` | `address` | The deployer/admin of the contract |
| `candidatecount` | `uint` | Total number of candidates |
| `candidates` | `mapping(uint => candidate)` | Stores candidate info |
| `hasvoted` | `mapping(address => bool)` | Tracks if an address has already voted |


🔒 Security Notes
Voting is one address, one vote

Only valid candidate IDs are accepted

Only the contract owner can modify candidates

📜 License
This project is licensed under the MIT License — see the LICENSE file for details.

✍️ Author
Inderjot Singh
📧 singhinderjot816@gmail.com
🔗 GitHub: @InderjotSingh17

⭐️ Star this repo if you found it helpful!
