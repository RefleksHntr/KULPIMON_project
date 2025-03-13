# KULPIMON Project

KULPIMON Project is deployed on the Monad testnet.

## Overview

This project utilizes Foundry, a fast and modular toolkit for Ethereum application development, written in Rust. Foundry includes:

- **Forge**: A testing framework for Ethereum smart contracts.
- **Cast**: A command-line tool for interacting with smart contracts and the EVM.
- **Anvil**: A local Ethereum node for development and testing.
- **Chisel**: A Solidity REPL for quick contract prototyping.

## Documentation

For detailed information, visit the official Foundry documentation: [Foundry Book](https://book.getfoundry.sh/)

## Usage

### Build the Project

```sh
forge build
```

### Run Tests

```sh
forge test
```

### Format Solidity Code

```sh
forge fmt
```

### Generate Gas Snapshots

```sh
forge snapshot
```

### Start a Local Node

```sh
anvil
```

### Deploy Smart Contracts

```sh
forge script script/YourScript.s.sol:YourScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Use Cast for EVM Commands

```sh
cast <subcommand>
```

### Help Commands

```sh
forge --help
anvil --help
cast --help
```

