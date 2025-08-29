//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract VisibilityExample {

    // state variable that can be accessed by a getter function from anywhere

    uint256 public myPublicNumber = 10;

    // state variable that can only be accessed within this contract

    uint256 private myPrivateNumber = 20;

    // state variable that can be accessed by inheriting contracts.

    uint256 internal myInternalNumber = 30;

    // public function can be called from anywhere
    function getPublicNumber() public view returns(uint256) {
        return myPublicNumber;
    }

    // function that can only be called from inside this contract

    // 07069042569

    function _getPrivateNumber() private view returns(uint256){
        return myPrivateNumber;
    }

    // This function can be called internally or by inheriting contracts.
    function getInternalNumber() internal view returns (uint256) {
        _getPrivateNumber();
        return myInternalNumber;
    }

    // function can only be called from outside the contract
    function getExternalNumber() external pure returns(uint256) {
        // invalid call and will cause a compiler error
        // getExternalNumber();
        return 40;
    }

// function that calls another public function
    function callExternalFromInternal() public view returns (uint256) {
        return getPublicNumber();
    }
}



//  a new contract that inherits from visibilityexample

contract ChildContract is VisibilityExample {
    function getNumbersFromParent() public view returns (uint256) {
        // internal function from the parent
        return getInternalNumber();

        // this would fail because the function is private
        // return _getPrivateNumber();
    }
}

