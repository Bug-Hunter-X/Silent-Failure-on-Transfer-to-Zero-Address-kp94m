```solidity
function transfer(address _to, uint256 _value) public returns (bool success) {
    require(_to != address(0), "Cannot transfer to the zero address");
    require(balanceOf[msg.sender] >= _value, "Insufficient balance");
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
    emit Transfer(msg.sender, _to, _value);
    return true;
}
```