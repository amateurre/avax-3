# mod3 Token Smart Contract

## Overview

This Solidity smart contract, named "mod3," is an ERC-20 token that extends the functionality of the OpenZeppelin ERC20 and Ownable contracts. It represents a simple token on the Avalanche blockchain with the symbol "AVAX" and the name "Avalanche."

## Features

1. **Token Creation:** The contract is designed to create the "Avalanche" (AVAX) token during deployment. It initializes the total supply with 20 tokens, which are initially assigned to the contract deployer.

2. **Minting:** The contract allows the owner to mint additional tokens. The `mint` function can be called by the owner, specifying the recipient's address and the amount of tokens to mint.

3. **Burning:** Token holders can burn their own tokens using the `burn` function. This reduces the total supply, and the burned tokens are permanently removed from circulation.

4. **Ownership:** The contract incorporates the Ownable contract from OpenZeppelin, ensuring that only the owner (deployer) has the authority to mint new tokens.

5. **Transfer:** The contract inherits the ERC20 standard, providing the ability to transfer tokens between addresses. The `transfer` function is overridden to maintain compatibility with the ERC20 standard.

## Usage

### Deployment

1. Deploy the contract on the Avalanche blockchain.

### Minting

1. Call the `mint` function, specifying the recipient's address and the amount of tokens to mint. Only the owner has the authority to mint.

```solidity
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}
```

### Burning

1. Token holders can burn their own tokens using the `burn` function. Specify the amount of tokens to burn.

```solidity
function burn(uint256 amount) public {
    _burn(msg.sender, amount);
}
```

### Transferring

1. Use the standard ERC20 `transfer` function to transfer tokens between addresses.

```solidity
function transfer(address recipient, uint256 amount) public override returns (bool) {
    return super.transfer(recipient, amount);
}
```

## Security

- The contract uses the Ownable pattern, ensuring that only the owner has the authority to perform critical functions like minting.

- Always exercise caution and conduct thorough testing before deploying any smart contract on the blockchain.

## License

This smart contract is released under the MIT License. See [LICENSE](LICENSE) for more details.

---

**Note:** This README provides a brief overview of the mod3 token smart contract. For more detailed information, review the contract code and comments directly.
