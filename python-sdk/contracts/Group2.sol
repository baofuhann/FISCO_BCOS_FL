pragma solidity ^0.4.24;

contract Group2 {
    uint result;
    event onAdd(uint a, uint b, uint sum);

    constructor() public {
        result = 0;
    }

    function set(uint a, uint b) public {
        result = a + b;
        emit onAdd(a, b, result);
    }

    function get() public view returns (uint) {
        return result;
    }
}
