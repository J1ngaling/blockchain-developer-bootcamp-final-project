# blockchain-developer-bootcamp-final-project

Final project - Automated rental agreements

    Deployed version url:


How to run this project locally:

Prerequisites
    <!-- Node.js >= v14
    Truffle and Ganache
    NPM
    git fetch --all --tags
    git checkout tags/v1.0 -b cert -->

Contracts
    <!-- Run npm install in project root to install Truffle build and smart contract dependencies
    Run local testnet in port 7545 with an Ethereum client, e.g. Ganache
    truffle migrate --network development
    truffle console --network development
    Run tests in Truffle console: test -->

Frontend
    <!-- cd client
    npm install
    npm start
    Open http://localhost:3000 -->

<!-- How to populate locally deployed contract with listings
truffle migrate --network development
truffle console --network development
let rr = await Rentals.deployed()
Add two listings:
rr.addProperty(web3.utils.toWei("0.00156"), "Hämeentie 77", "Duplex with a nice view", "https://google.com","https://www.hermannikuvia.fi/wp-content/uploads/Hameentie-77-sisapiha.jpg")
rr.addProperty(web3.utils.toWei("0.002"), "Mannerheimintie 30 A", "Duplex with a really bad view", "https://google.com","https://www.finna.fi/Cover/Show?id=hkm.HKMS000005%3Akm002zsb&index=0&size=large&source=Solr")
Send ETH to local wallet: web3.eth.sendTransaction({ from: "<your local address>", to: "<your local network wallet>", value: web3.utils.toWei("10") })
cd client && yarn start
Open local ui from http://localhost:3000
Make sure your Metamask localhost network is in port 7545.
If you get TXRejectedError when sending a transaction, reset your Metamask account from Advanced settings. -->


Screencast link
    http://


Public Ethereum wallet for certification:
    jingaling.eth


Project topic: Non Fungible Token Smart Contract for Motor Vehicles 

Premise of Smart Contract

    This Smart Contract will allow anyone to purchase a Non Fungible Token, giving ownership rights to a motor vehicle. The token number will be matched to the VIN number of the vehicle and allow for a distributed ledger of ownership. When the NFT is first purchased, the token will be minted into the account of the purchaser and that purchaser will be the legal owner of the vehicle. The token can then be transfered when the vehicle is sold to the next owner. This will allow prospective purchasers to validate the authenticity of the vehicle, verify the owner and provide an ownership history.


Advantages to current TradFi:

    - Real-time review and access of ownership history and credentials
    - Transparency of terms and details of the transactions
    - Increased efficiency instead of using vehicle titles
    - Removal of central governmental authorities that cause delays and additional costs


Simple workflow

    Enter website
    Login with Metamask
    Ensure that you are on the Rinkeby Test Network
    User account address will be show
    Mint a vehicle token by pressing the 'Purchase Vehicle' button
    Agree on contract, pay mint value (0.02 ether) plus gas with Metamask (updates smart contract state)
    Ownership NFT is transferred to user account
    Press 'Click for Balance' button to show number of tokens held (smart contract call)
    Choose sequential number of tokens held to show respective token Id
    Enter token Id into the 'Enter token Id' input
    Enter address of transferee int 'Enter Address' input 
    Click 'Transfer' button to transfer vehicle token
    Agree on contract, pay gas with Metamask (updates smart contract state)


Other items (Not implemented)

    List if items still remaining


Directory structure

    contracts: Smart contracts that are deployed in the Rinkeby testnet.
    front_end: Project's html and js frontend.
    migrations: Migration files for deploying contracts in contracts directory.
    test: Tests for smart contracts.


Environment variables (not needed for running project locally)

    <!-- RINKEBY_INFURA_PROJECT_ID=
    RINKEBY_MNEMONIC= -->


TODO features

    Ability to list all tokens owned
    Include metadata of the vehicle (model, colour, etc)
   