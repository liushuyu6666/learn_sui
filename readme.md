# Overview
This guide introduces the basics of Sui, a blockchain platform, and explores its use of the Move programming language. The aim is to facilitate learning through practical engagement.

# Prerequisites
## Set up the environment
Before you begin, ensure your environment is correctly set up by following these comprehensive setup instructions:

1. [Sui Move Intro Courses](https://intro.sui-book.com/unit-one/lessons/1_set_up_environment.html)
2. [Move Book](https://move-book.com/before-we-begin/install-sui.html)

## Create a local address
To create and switch to a new local address within the Sui client, execute the following commands in your terminal:

```bash
# Create a new address with the alias 'learn_sui'
sui client new-address ed25519 learn_sui

# Switch to the newly created 'learn_sui' address
sui client switch --address learn_sui
```

## Load gas to the new address
```base
sui client faucet --address <your_address> --url https://faucet.testnet.sui.io/gas
```
- `<your_address>` can be found via `sui client addresses`.
- Use this command to verify if gas is added `sui client gas`. 

# Set up a new project
## Initialize a new project
Follow the instruction here: [initializing the package](https://intro.sui-book.com/unit-one/lessons/3_custom_types_and_abilities.html#initializing-the-package).

The command `sui move new <PACKAGE NAME>` will create a `Move.toml` configuration file. 

**Note**: Ensure that the package name used in your code matches the `name` field specified under [package] in your `Move.toml` file.

## Test and Build
```bash
sui client test
sui client build
```

## Publish or deploy
```bash
sui client publish --gas-budget <gas_budget> <absolute file path to the package that needs to be published>
```

## Call a method
1. First, export the `package ID`:
    ```bash
    export PACKAGE_ID=<package_ID>
    ```
   - To view the `package_ID`, navigate to the Object Changes section after publication. Look under Published Objects, where you will find the PackageID field listed.
2. Run the follow command to call the method:
    ```bash
    sui client call --function <function_name> --module <module_name> --package <package_ID> --gas-budget 10000000
    ```