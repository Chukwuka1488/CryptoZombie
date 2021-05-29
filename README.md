# CryptoZombie

Step 1: Making a Zombie Factory using a random generator function and using SHA3 for encoding.

Step 2: 
a. To store zombie ownership, we're going to use two mappings: one that keeps track of the address that owns a zombie, and another that keeps track of how many zombies an owner has.

b. Now that we have our mappings to keep track of who owns a zombie, we'll want to update the _createZombie method to use them.
In order to do this, we need to use something called msg.sender.

c. Let's make it so each player can only call this function once. That way new players will call it when they first start the game in order to create the initial zombie in their army.
How can we make it so this function can only be called once per player?
For that we use require. require makes it so that the function will throw an error and stop executing if some condition is not true:

d. Rather than making one extremely long contract, sometimes it makes sense to split your code logic across multiple contracts to organize the code.
One feature of Solidity that makes this more manageable is contract inheritance:

e. break up functions by using import statements

f. Storage refers to variables stored permanently on the blockchain. Memory variables are temporary, and are erased between external function calls to your contract.

g. In addition to public and private, Solidity has two more types of visibility for functions: internal and external.
internal is the same as private, except that it's also accessible to contracts that inherit from this contract. 

h. For our contract to talk to another contract on the blockchain that we don't own, first we need to define an interface.
