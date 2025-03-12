// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private s_number;

    event NumberChanged(uint256 num);

    constructor() Ownable(msg.sender) {}

    function store(uint256 _num) public onlyOwner {
        s_number = _num;
        emit NumberChanged(_num);
    }

    function readNumber() external view returns (uint256) {
        return s_number;
    }
}
