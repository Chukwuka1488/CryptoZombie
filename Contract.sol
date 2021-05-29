pragma solidity >=0.8.0 <0.9.0;

// 2. Create contract here

contract ZombieFactory {

    // declare our event here - last piece of code
    event NewZombie(uint zombieId, string name, uint dna)

    // state variables and integers
    uint256 dnaDigits = 16;

    // math operator
    uint256 dnaModulus = 10**dnaDigits;

    // Create a struct named Zombie with 2 properties: name (a string), and dna (a uint).
    struct Zombie {
        string name;
        uint256 dna;
    }

    //Arrays: Create a public array of Zombie structs, and name it zombies.
    Zombie[] public zombies;

    // Function Declarations: public
    // function createZombie(string memory _name, uint256 _dna) public {
    
    // Function Declarations: private
    function _createZombie(string memory _name, uint256 _dna) private {
        
        // Working With Structs and Arrays
        
        // create a New Zombie:
        // Zombie satoshi = Zombie("Satoshi", "X");
       
        // Add that person to the Array:
        // zombies.push(satoshi);   
        // zombies.push(Zombie(_name, _dna))

        uint id = zombies.push(Zombie(_name, _dna)) - 1; // modified
        // and fire it here after event listener is created
        emit NewZombie(id, _name, _dna);
    }

    // More on Functions
    // Create a private function called _generateRandomDna. It will take one parameter named _str (a string), and return a uint. Don't forget to set the data location of the _str parameter to memory.
    function _generateRandomDNa(string memory _str) private view returns (uint) {
        // Keccak256 and Typecasting
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }
     //to create a zombie with random dna
    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }
}

// https://share.cryptozombies.io/en/lesson/1/share/NoName
}
