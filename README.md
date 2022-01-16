# blockchain-developer-bootcamp-final-project - 

## Project description

### Project topic: 

    Non Fungible Token Smart Contract for Motor Vehicles 


### Premise of Smart Contract:
    This Smart Contract will allow anyone to purchase a Non Fungible Token, giving ownership rights to a motor vehicle. The token number will be matched to the VIN number of the vehicle and allow for a distributed ledger of ownership. When the NFT is first purchased, the token will be minted into the account of the purchaser and that purchaser will be the legal owner of the vehicle. The token can then be transfered when the vehicle is sold to the next owner. This will allow prospective purchasers to validate the authenticity of the vehicle, verify the owner and provide an ownership history.


### Advantages to current TradFi:
    * Real-time review and access of ownership history and credentials
    * Transparency of terms and details of the transactions
    * Increased efficiency instead of using vehicle titles
    * Removal of central governmental authorities that cause delays and additional costs


# Final Project: Automated rental agreements

## Deployed version url: 
    https://round-breeze-3568.on.fleek.co/


## How to run this project locally:

### Prerequisites
    * Node >=v14
        * download Node: https://nodejs.org/en/download/


    * Truffle v5.4.17

        * Truffle: 'npm install -g truffle'
        * HDWallet provider: 'npm install @truffle/hdwallet-provider'
        * Ganache-cli: 'npm install ganache-cli'

    * Open-zeppelin contracts and libraries: 'npm install @openzeppelin/contracts'

    * Utils .env file: 'npm install dotenv'

### Setting up the repo
    * Clone the repo by running 'git clone https://github.com/J1ngaling/blockchain-developer-bootcamp-final-project'
    * Run npm install in project root to install Truffle build and smart contract dependencies

## Setting up the local network:
    * Run local testnet in port 7545 with an Ethereum client such as  Ganache
    * Enter the following to migrate the contract - 'truffle migrate --network development'
    * Open the truffle console using - 'truffle console --network development'
    * Run tests in Truffle console by entereing - 'test'

## Front-end:
    * Open the file _dapp.js_ and navigate to line 28. Replace the contractAddress with the localhost address that was created 
    * If you have _Live Server_ plugin installed in VS Code then right click on _index.html_ and select "Open with Live Server" OR
    * Run 'npm install -g http-server' to install http-server globally
    * Run 'http-server' - this will display the IP-address where the Local Node Js web server is running and accessible
    * Go to the browser and point to the IP address given by the http-server command over Terminal or Command prompt
    * Connect your MetaMask waller and start interacting with the site
    * This DApp will require you to have Rinkeby test-ether which can be obtained here - https://faucet.rinkeby.io/


## Screencast link:
    https://www.loom.com/share/c47ffe63c1624af186092c2bf2394203


## Public Ethereum wallet for certification:
    'jingaling.eth'


## Simple workflow:
    1. Enter website
    2. Login with Metamask
    3. Ensure that you are on the Rinkeby Test Network
    4. User account address will be shown on site - ensure it is the correct address
    5. Mint a vehicle token by pressing the 'Purchase Vehicle' button
    6. Agree on contract, pay mint value (0.02 ether) plus gas with Metamask (updates smart contract state)
    7. Ownership NFT is transferred to user account
    8. Press 'Vehicle Balance' button to show number of tokens held (smart contract call)
    9. Choose sequential number of tokens held to show respective Token ID
    10. Enter Token ID into the 'Enter Token ID' input
    11. Enter address of transferee into 'Enter Address' input 
    12. Click 'Transfer' button to transfer vehicle token
    13. Agree on contract, pay gas with Metamask (updates smart contract state)
   

## Directory structure:
    * 'build/contracts': ABI files
    * 'contracts': Smart contracts that are deployed on the Rinkeby testnet.
    * 'migrations': Migration files for deploying contracts in contracts directory.
    * 'test': Tests for smart contracts.
    * 'index.html': The front end containing the CSS and html
    * 'dapp.js': The backend javascript file for the front end


## Environment variables (not needed for running project locally):

    MNEMONIC=
    ENDPOINT_KEY=
    


## To do features:
    * Ability to list all tokens owned
    * Include metadata of the vehicle (model, colour, etc)
    * Matching the Token ID to the VIN number
   