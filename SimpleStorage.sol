// SPDX-License-Identifier: MIT

// define the version using soldity
pragma solidity 0.8.8; // ^0.8.7 and above ||latest 0.8.12 during 31 May 2022

// Compiled to EVM : Etherum Virtual Machine

// next is contract
contract SimpleStorage {
    
    mapping(string => uint256) public nameToNumber;

    struct People{
       uint256 number;
       string name; 
    }
    
    People[] public peoples;

    function addPerson(string memory _name , uint256 _number) public {
        peoples.push(People({number : _number, name : _name}));
        nameToNumber[_name] = _number;
    }

}

// 0x0107dc56d904b711c4a7fd32c593a5ff2f82bf42 Contract Identifier

