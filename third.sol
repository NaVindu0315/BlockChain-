// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
 import "@openzeppelin/contracts/access/Ownable.sol";


 contract My3Contract is Ownable
 {
    constructor(address _initialOwner) Ownable(_initialOwner) {

        owner = msg.sender;
        // Other initialization code if needed
    }
    //Person [] public people;

    uint256 public peoplecount = 0;
    mapping (uint=>Person) public people;


    address owner;
    
    modifier  onlyOwner () override
    {
     require   ( msg.sender == owner);
     _;
     

    }


    struct Person{
        uint _id;
        string _firstname;
        string _lastname;

    }
    
    

    function addperson(string memory _firstname,string memory _lastname ) public onlyOwner 
    {
        incrementcount();
        people[peoplecount] = Person(peoplecount,_firstname,_lastname);
       // people.push(Person(_firstname,_lastname));
        
    }
    function incrementcount() internal {
        peoplecount +=1;
        
    }
 }

