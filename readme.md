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