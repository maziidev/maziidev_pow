// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


contract Bank {

    // --------our custom error---------
    // insufficient funds
    error InsufficientFunds(uint256 required, uint256 available);

    // for when user tries to transfer to themselves.
    error SelfTransferNotAllowed();


    // ----------let's create our events----------
    // deposit events
    event Deposit(address indexed user, uint256 amount, uint256 newBalance);

    // withdraw events
    event Withdrawal(address indexed user, uint256 amount, uint256 newBalance);

    // transfer events
    event Transfer (
        address indexed from,
        address indexed to,
        uint256 amount,
        uint256 newBalanceFrom,
        uint256 newBalanceTo
    );

    // mapping to store all users address
    mapping(address => uint256) public balances;

    /// @dev A payable function that allows a user to deposist Ether into their account.
    function deposit() public payable {
        balances[msg.sender] += msg.value;

        // emit for deposit
        emit Deposit(msg.sender, msg.value, balances[msg.sender]);
    }

    /// @dev allows a user to withdraw a specified amount of ether from their account.
    /// @param _amount the amount of ether to withdraw.

    function withdraw(uint256 _amount) public {
        if(balances[msg.sender] < _amount){
            revert InsufficientFunds({required: _amount, available: balances[msg.sender]});
        }

        balances[msg.sender] -= _amount;

        (bool sent,) = payable(msg.sender).call{value: _amount}("");
        require(sent, "failed to send ether");

        // emit for withdrawal
        emit Withdrawal(msg.sender, _amount, balances[msg.sender]);
    }

    /// @dev allows a user to transfer ether from their account to another.
    /// @param _to the address to transfer ether to.
    /// @param _amount the amount of ether to transfer
    function transfer(address _to, uint256 _amount) public {
        if (msg.sender == _to){
            revert SelfTransferNotAllowed();
        }

        require(balances[msg.sender] >= _amount, "Insufficient balance");

        balances[msg.sender] -= _amount;
        balances[_to] += _amount;

        emit Transfer(
            msg.sender,
            _to,
            _amount,
            balances[msg.sender],
            balances[_to]
        );
    }

    ///@dev a view function to get the balance of a user.
    /// @param _user the address of the user.
    /// @return the balance of the user.

    function getBalance(address _user) public view returns(uint256){
        return balances[_user];
    }
}