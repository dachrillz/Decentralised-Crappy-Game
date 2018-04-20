# Decentralised-Crappy-Game

This is a crappy decentralised game written using HTML/JS as frontend and the Ethereum Virtual Machine as backend. (The implementation language is solidity)


The game simply works as following... 
1. You start index.html in a web browser that is compatible with Ethereum.
2. Enter an amount in Ether that you want to bet
3. The contract does a "semi random calculation" (It just uses the timestamp of the block).
4. If you are lucky you get your money back, if not the house takes your money.

There is no way to win money from the house as is... This kind of ruins the point of the whole gambling, but I ran out of time to implement.


There is no contract published to the real ethereum chain, meaning that you yourself has to publish it using something like a local ethereum chain. This can be done using
ganache. 
- Note: To the constructor of the contract you have to pass an address. This is the address of the 'house'. That is something akin to the bank.


When you have published the contract (simpleBet.sol), you have to manually go into index.html and change the following addresses:
1. The address of the contract in the blockchain in var my_interface = my_contract.at('ADDRESS OF CONTRACT') 
2. The address of the player in my_interface.bet({from: 'ADDRESS OF PLAYER', value: $('#bet').val()* 1000000000000000000, gas: 300000}); //ADDRESS OF PLAYER HERE!

Even though this game is incredibly crude it shows us that we can do logic on the ethereum chain, thus creating consensus about something without relying on trust!

If I had more time I would do the following:
- use the Truffle framework, as it makes the structure of the project more consistent.
- I would make a game that simply has more logic to it.
- Make a frontend that is somewhat pretty. The current one is truly bare minimum...



