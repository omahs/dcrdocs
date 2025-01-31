# Glossary

---

## A

---

#### Account

Accounts allow you to keep separate records of your DCR funds. Transferring DCR across accounts will create a transaction on the blockchain.

#### Address

A human-readable representation of a possible destination for a payment, similar to an email address. Unlike an email address however, there are a variety of address types, and most addresses are intended only for a single use. This is because addresses represent not only the destination of a payment, but constraints required to redeem funds. For more on addresses see the [address details](https://devdocs.decred.org/developer-guides/addresses/) page in the developer documentation.  

#### ASIC

An Application-Specific-Integrated-Circuit (ASIC) is a computing device which has been designed to perform only a single task with extreme efficiency. In the context of cryptocurrency, an ASIC is usually designed to perform Proof-of-Work (PoW) mining. Hashrates from ASICs are typically orders of magnitudes higher than hashrates from general purpose CPUs or GPUs.

#### Atom

The smallest unit of Decred currency. One atom is one hundred millionth of a single DCR (0.00000001 DCR).

## B

---

#### Block

The data structure transactions are bundled into before being written into the distributed ledger. Decred's difficulty adjusts such that new blocks are found every five minutes on average.

#### Block explorer

A tool for inspecting the contents of blocks in a more user-friendly format.

#### Block header

Metadata at the beginning of a block which contains summary information about
the block.
Hashing a block header yeilds a unique value which is often used as the main way
of identifying a block.

The [Block Header Specifications](https://devdocs.decred.org/developer-guides/block-header-specifications)
page of the Developer Documentation provides a detailed look the component parts
of a block header, and how a header is serialized for transmission across the
Decred network.

#### Block reward

A reward (in DCR) split between PoW miners, active and chosen voters, and the Treasury for successfully creating a block of transactions. The block reward [decays exponentially](advanced/issuance.md) with block height (length of blockchain). However, Decred’s algorithm interpolates this decay over time so as not to produce market shocks, as typically seen in algorithms that involve large and infrequent reductions, such as halving the rewards every 4 years. The block reward started at 31.19582664 and it adjusts every 6,144 blocks (approximately 21.33 days) by reducing by a factor of 100/101.

#### Block voting

In each block, five tickets are called to vote. In addition to votes on any open consensus rule change proposals, each ticket votes to approve or reject the regular transaction tree of the previous block. If a majority of voting tickets vote Yes, the regular transaction tree of the previous block is accepted. If a majority of voting tickets vote No (or there is a tie), the regular transaction tree of the previous block is rejected and those transactions are returned to the mempool.

## C

---

#### Change

Decred has a concept of change, which is very similar to the concept of change
when using physical cash.

To explain by way of an example, imagine you have received 5 DCR in a single
transaction from a friend.
This 5 DCR is likely contained in a single Unspent Transaction Output (UTXO)
within your wallet, and this can be compared to a physical $5 bill in your
wallet.
Suppose you want to purchase an item for $1 and pay for it with your $5 bill -
the shopkeeper must give you $4 of change.
Similarly, in order to spend 1 DCR from the UTXO containing 5 DCR, your wallet
creates a transaction which sends 1 DCR to the intended recipient, and a change
transaction which sends the remaining 4 DCR to another address you own (aka. a
change address).

#### Change Address

An address created by your wallet for the purpose of receiving change.
Every time a wallet has a need for a change address, it will create a new
address which has never been used before.

Creating a new change address for each transaction provides a significant boost
to user privacy.
Not using dedicated change addresses, or re-using existing ones, would enable a
passive observer to infer a significant amount of information about your
transaction sizes and where you are sending transactions to.

#### Coin Type

A unique number assigned to a cryptocurrency, which is used by [HD
Wallets](#hierarchical-deterministic-hd-wallet) during the process of generating public/private keypairs.
Cryptocurrencies with assigned coin types are listed in
[SLIP-0044](https://github.com/satoshilabs/slips/blob/master/slip-0044.md).
The coin type of Decred is 42.

#### Coinbase maturity

Outputs from coinbase and stakebase transactions cannot be spent until the coinbase maturity period has passed. The coinbase maturity period is 256 blocks.

#### Coinbase transaction

Every block which is mined contains a single coinbase transaction. This transaction will only have one input, and that is newly created Decred which constitutes the PoW and Treasury portions of the block reward. Coinbase transactions are part of the regular transaction tree, which means that they will be rejected if proof-of-stake voters vote to reject the block which contains them. Decred created in coinbase transactions cannot be spent until the coinbase maturity period has passed.

#### Cold wallet

A Decred wallet which is used to generate private keys and store Decred whilst being completely offline. Methods of cold storage include generating a wallet on a computer which is never connected to the Internet, using a dedicated hardware wallet, or using a paper wallet.

#### Command Line Interface (CLI)

An interface a user interacts with via the command line - often referring to a CLI wallet, which is operated using various tools and commands.

#### Confirmation

A transaction is confirmed when it has been included in a block that has been verified by the network (added to the blockchain). Each additional block added to the blockchain reconfirms all transactions in all previous blocks. The number of times a transaction has been confirmed is used as a measure of confidence that the transaction will remain in the blockchain. A wallet or other service may require a certain number of confirmations before it considers a transaction to be valid. For example, if a wallet requires three confirmations to consider a transaction valid, it would require the next two blocks after the block including the transaction to confirm the transaction.

#### Consensus rules

Rules, encoded in software, that allow a network of nodes to reach an agreement about the state of the ledger. Rules include what data blocks can contain, how block data is structured, and how nodes validate blocks.

#### Consensus rules voting

Changes to Decred's consensus rules can only be made through an [on-chain voting process](governance/consensus-rule-voting/overview.md) which lasts for around one month. The change is made only if at least 75% of votes are in favor.

#### Constitution

A [document](governance/decred-constitution.md) which defines the purpose and guiding principles of the Decred project.

#### Credits

The full unit of the Decred currency (i.e. 1 DCR).

## D

---

#### DCR

Ticker for the Decred currency.

#### Decred Change Proposal (DCP)

A [design document](https://github.com/decred/dcps) that describes potential protocol or consensus changes to Decred. DCPs primarily serve for documentation, fostering cross-implementation compatibility and helping ensure proper engineering rigor is followed.

#### Decrediton

A GUI (Graphical User Interface) [Decred wallet](https://github.com/decred/decrediton/) maintained by the core team.

#### Difficulty

Difficulty is a measure of how difficult it is to mine a new block (i.e. find a hash below a given target). In Decred, the PoW difficulty is calculated from the exponentially weighted average of differences in previous block times.

#### Distributed ledger

A cryptographically secure ledger, composed of nodes in a network, where each node holds a copy of the same ledger.

#### Double-spend

A double-spend is an attack where the given set of coins are spent in more than one transaction. A successful double-spend results in inflation by creating new coins which did not previously exist.

## E

---

#### Elliptic Curve

In mathematics, an elliptic curve is a plane algebraic curve defined by an
equation of the form _y^2^ = x^3^ + ax + b_{: .dcrm }.
Elliptic curves have a number of interesting properties which make them useful
for cryptographic purposes.

For example, elliptic curve point multiplication is used as the basis of
producing a one-way function.
The multiplication of two points on an elliptic curve yields a third point on
the curve whose location has no immediately obvious relationship to the
locations of the first two, and thus repeating this N times will yield a point
that may be essentially anywhere.
Assuming N is sufficiently large, reversing this process is computationally
infeasible.

#### Elliptic Curve Cryptography (ECC)

An approach to public-key cryptography based on the algebraic structure of
elliptic curves over finite fields.

ECC requires significantly smaller keys to achieve equivalent security compared
to non-EC cryptography techniques - for example, a 256 bit ECC key is equivalent
to a 3072 bit RSA key.
This is a particularly useful property in the context of a cryptocurrency, which
fundamentally depends upon transmitting and storing a large number of
cryptographic keys.
ECC also has lower CPU and memory requirements compared to most non-EC
techniques.

#### Expired ticket

Tickets that reached the end of their window without being called to vote - these can be revoked, but do not grant a reward.

## F

---

#### Faucet

A mechanism for obtaining free (testnet) coins.

#### Fork

In the context of blockchains, the term fork has two common meanings; it can refer to either a code fork or a chain fork. A [code fork](https://en.wikipedia.org/wiki/Fork_(software_development)) is when developers take a copy (fork) of the source code of a project and begin independently developing it, creating a separate version of the software. For instance, the OpenBSD operating system is a fork of NetBSD. If the state of the blockchain is also forked, as was the case with Bitcoin Cash, it is also considered a “chain fork”. In this case, owners of coins on the original chain will have equivalent coins on the new chain when the chains diverge. Decred began its life as a source code fork of [btcd](https://github.com/btcsuite/btcd), an alternate full node implementation of Bitcoin. Significant changes were then made before launch, including modifications to the consensus rules, a Proof-of-Stake (PoS) layer to enable on-chain governance, a new hashing algorithm and other innovations. Decred is not a chain fork, as it did not copy the state of the Bitcoin blockchain, and instead started from its own genesis block. 

It is also worth noting that chain forks can and do regularly occur without any code changes. This happens unintentionally when nodes in the network temporarily disagree on the state of the blockchain. Typically, these forks are short lived and resolve when the nodes reach consensus. In [sustained chain splits](https://blog.goodaudience.com/blockchain-forks-and-chain-splits-why-we-should-avoid-them-f54c693a90f1) such as Bitcoin Cash, there is sufficient economic and hash power to support multiple competing versions of the blockchain for an extended period of time.

Forks can be [hard forks](#hard-fork) or [soft forks](#soft-fork). Soft forks are backwards compatible, whereas hard forks are not. 

#### Full node

Short for 'fully-validating node. Refers to software that fully validates all transactions and blocks, as opposed to trusting a 3rd party. In addition to validating transactions and blocks, nearly all full nodes also participate in relaying transactions and blocks to other full nodes around the world, thus forming the peer-to-peer network that is the backbone of the Decred cryptocurrency.

## G

---

#### Genesis block

The very first block of the Decred blockchain, created on the 8th of February 2016.
It has a block height of [zero](https://dcrdata.decred.org/block/0).

## H

---

#### Hard Fork

A permanent divergence (or split) in the blockchain caused by non-backwards compatible changes to the consensus rules. Nodes validating transactions with the old rules will create blocks or transactions that are considered invalid by nodes using the new rules. Hard forks result in two separate chains, one creating blocks using the old rules, and another creating blocks using the new rules. 

In Decred, consensus rule changes are implemented via hard forks coordinated using [consensus rule voting](governance/consensus-rule-voting/overview.md). This enables rules to be changed predictably without fracturing the network, and allows Proof-of-Stake (PoS) voters to exercise sovereignty over whether or not to accept the proposed changes. 

#### Hardware wallet

A dedicated hardware device which stores a wallet's private keys. Examples include [Trezor](https://trezor.io/) and [Ledger](https://www.ledger.com/).

#### Hash

The output of a cryptographic hashing function that produces a fixed-size value from variable-size input. While it is computationally easy to create a hash from an input, it is extremely computationally difficult to calculate an input that will produce a given hash.

#### Hash function

A cryptographic function that produces a fixed-size hash value from variable-size transaction input. Decred's Proof-of-Work uses the [BLAKE-256](research/blake-256-hash-function.md) hashing function.

#### Hashrate

The number of hashes per second computed by miners on the network.

#### Hierarchical Deterministic (HD) Wallet

Using the algorithm initially defined in
[BIP-0032](https://github.com/bitcoin/bips/blob/master/bip-0032.mediawiki), a
Hierarchical Deterministic (HD) wallet is able to automatically derive a
tree-like structure of public/private keypairs from a single [seed
phrase](#seed).
This eliminates the need for the user to constantly generate and backup new
public/private keypairs themselves.
Instead, the user only needs to backup the seed phrase, and the full wallet and
all of its associated keys can be regenerated when necessary.

#### Hot wallet

A Decred wallet which is connected to the Internet. Proof-of-stake voting wallets are an example of hot wallets, they are constantly connected to the Decred network because they can be called to vote at any time.

#### Hybrid PoW/PoS

In Decred, a [hybrid PoW/PoS system](research/hybrid-design.md) is used, whereby blocks mined by PoW miners must be approved by ticket holders, which are pseudorandomly selected from the ticket pool. This provides a check on PoW miners and increases the overall cost of attacking the network. When a block is approved, 60% of the block reward goes to the PoW miner, 30% goes to the holders of tickets called to vote (approve blocks), and 10% goes to the Decred Treasury to fund the project.

## I

---

#### Immature ticket

Once tickets are mined they are immature for 256 blocks (about 20 hours) and cannot be called to vote until after this period elapses.

#### Inflation

See [Issuance](#issuance).

#### Issuance

Increase in the [available supply](advanced/issuance.md) of Decred as new DCR is minted into existence through the block reward.

## L

---

#### Live ticket

Tickets that are waiting to be called.

## M

---

#### Mainnet

The proper Decred network - a term used to differentiate from testnet.

#### Mempool

Transactions waiting to be mined.

#### Miners

Miners help secure the network via Proof-of-Work (PoW) mining. Miners receive block rewards and transaction fees for successfully validating blocks.

#### Mining Pool

A group of miners who share (pool) their computational resources to mine DCR. When a member of a mining pool successfully mines a block, the rewards are typically split among all pool members in proportion to the hashpower they contribute to the pool.

#### Missed ticket

Tickets that have been called but did not receive a reward. This can happen if a ticket is called to vote, but the wallet that bought the ticket does not respond. This can also happen if the wallet does respond and broadcasts its vote to the network, but a miner does not include their vote in the following block.

#### Multisignature

Multisignature refers to transactions which can be authorized by more than one private key. Multisignature transactions can support multiple keys (N) and a subset of those (M) are required to transact (commonly known as "MofN"). For example, a 2 of 3 multisignature transaction would have three valid keys, however only two of them would be required to authorize.

## N

---

#### Nonce

The word nonce is derived from "number used once". In the context of Decred, this usually refers to a 4-byte field in the block header which, along with some additional bytes used as an extra nonce, is adjusted by proof-of-work miners so that the hash of the block is lower than or equal to the current difficulty target of the network.

## O

---

#### Orphan block

Orphaned blocks are valid blocks which are not included in the definitive blockchain. Orphan blocks can occur when they are part of a branch of the blockchain that has been abandoned. This can occur naturally when two miners produce blocks at similar times. Orphan blocks can also be created when they build on an unknown block (i.e. the "parent" block is unknown, making it an "orphan").

#### Orphan transaction

A transaction with missing inputs (i.e. the "parent" transaction is unknown, making the transaction an "orphan"). Orphan transactions can also be created when they are part of a block that has been abandoned and have not been included in another block. For example, if a miner creates a valid block with transactions specific to them, such as coinbase transactions and votes, and that block is orphaned, the transactions in that block will become orphaned transactions.

## P

---

#### Politeia

A system for facilitating the submission and discussion of [proposals](https://proposals.decred.org/) in an environment with transparent censorship.

#### Private key

An astronomically large number which, when kept secret from others, enables legitimate spending of personal Decred while preventing others from spending it. Private keys are encrypted by wallets to prevent theft.

#### Private passphrase

A passphrase that is used to encrypt parts of the wallet.db file; most notably private keys. The private keys can not be accessed unless the passphrase is used to decrypt them.

#### Proof-of-Stake (PoS) voting

The mechanism by which ticket holders vote to approve blocks confirmed by PoW miners (thus providing a check on PoW miners), earn staking rewards, and vote on consensus rule changes and Politeia proposals.

#### Proof-of-Work

The mechanism used by miners to show that they have contributed computational power in order to create a new block. Miners will repeatedly create a hash of the block header until they find a hash equal to or below the current difficulty. Once shared with the network, this hash can easily be validated, thus demonstrating proof of the miners' work.

#### Protocol rules

See [Consensus Rules](#consensus-rules).

#### Public key

An astronomically large number generated algorithmically from a private key. Public keys can be freely shared without revealing any information about the private key they are generated from. The user’s public key is used to prove that a transaction was signed using their private key.

## Q

---

#### Quorum

The minimum level of participation required in order for a decision-making process to produce an actionable outcome. Changes to the consensus rules require at least 10% of votes to be for or against the change in order to be valid. Politeia proposals require 20%.

## R

---

#### Regnet

A [regression testing network](https://devdocs.decred.org/environments/regnet/)
with very low difficulty, such that a developer can mine new blocks locally at
will for testing purposes.
Regnet is designed for running unit tests, RPC server tests and consensus rule
tests.
It is not designed for full integration testing with other applications, such as
mining software or wallets.

#### Regular transaction tree

The normal [transactions](https://www.reddit.com/r/decred/comments/66j4l4/decred_proof_of_stake_explained/dgjsyxd) in a block: sending DCR to an address, coinbase transactions such as PoW Miner reward and Treasury stipend.

#### Reorg

A reorganization (or reorg) of the blockchain is when a set of blocks are replaced by another set which has more work. The number of blocks replaced is the depth of the reorg.

#### Revoked ticket

When a ticket (that was missed or expired) is revoked, the DCR used to buy it becomes spendable again.

#### Rule Change Interval (RCI)

An interval in which ticket holders can vote on consensus rule changes. On mainnet this is every 8,064 blocks (~4 weeks). Once the conditions for a vote have been met during a [Stake Version Interval (SVI)](#stake-version-interval-svi), voting is scheduled to begin on the first block of the next RCI. Votes are tallied on the last block of the RCI.

#### Rule change proposal

A proposal to change the consensus rules of the Decred blockchain. Rule change proposals must be implemented in latent code within the software running the network's nodes. If the proposal passes, the latent code activates one month later.

## S

---

#### Seed

A 256-bit (32-byte) cryptographically secure random number that can be used to recover a wallet. When creating a wallet using any Decred wallet software, a 33 word "seed phrase" is also created from the 32-byte seed. If the wallet is lost or corrupted, the seed phrase can be used to restore the wallet's private keys, transaction history, and balances using any Decred wallet on any computer.

#### Signature

A cryptographic mechanism to prove that a private key was used to validate or authorize some data (such as a transaction or a Politeia vote).

#### Simnet

A [simulation network](https://devdocs.decred.org/environments/simnet/) with very low difficulty, such that a developer can mine new blocks locally at will for testing purposes.

#### Simple Payment Verification (SPV)

A wallet mode in which only blocks related to addresses owned by the wallet are downloaded. When not in SPV mode, wallets must download all blocks in the blockchain to verify transactions (fully validating mode). SPV mode allows wallets to operate with less stringent hardware requirements and load significantly faster. SPV wallets cannot vote, but can purchase tickets and allocate voting rights to a [Voting Service Provider (VSP)](#voting-service-provider).

#### Smart contract

A self-executing contract with the terms of the agreement between buyer and
seller being directly written into lines of code.

Once a smart contract has been written and broadcast to the Decred network, the
code and the agreements contained therein exist across the distributed,
decentralized blockchain network.
As a result, the code fully controls the execution of the contract, enabling
trusted transactions and agreements to be carried out among disparate, anonymous
parties without the need for a central authority, legal system, or external
enforcement mechanism.

The scripting language used to create Decred smart contracts is not [Turing
complete](https://en.wikipedia.org/wiki/Turing_completeness).

#### Soft Fork

A change to consensus rules that is backwards compatible. Nodes running older versions without the new rules can still validate transactions and blocks. However, nodes running older versions can only partially validate transactions and blocks created by nodes using the new rules. This is because old nodes believe they are fully validating transactions, however, they are not able to undstand transactions created using the new rules. For instance, if a new transaction type is added via soft fork, only nodes using the new rules will be able to understand the new transaction type. 

#### Stake transaction tree

[Transactions](https://www.reddit.com/r/decred/comments/66j4l4/decred_proof_of_stake_explained/dgjsyxd) relating to ticket buying and ticket voting rewards.

#### Stake Version Interval (SVI)

An interval which is used to determine if a vote on consensus rule changes can begin. On mainnet this is every 2,016 blocks (~1 week). Before a vote on consensus rule changes can begin, 75% of tickets that vote during a Stake Version Interval (SVI) must be using software that contains the latent software change being proposed.

#### Stakebase transaction

Every block which is mined will contain a stakebase transaction for each ticket which voted on that block. Stakebase transactions have two inputs, the Decred which was spent to purchase the ticket, and the newly created Decred constituting the reward for voting. Stakebase transactions are also created when an expired or missed ticket is revoked, however there will be no voting reward created in these cases. Stakebase transactions belong to the stake transaction tree, which means that these transactions cannot be rejected by proof-of-stake voters, even if they vote to reject the block which contains them.

#### Stakepool

See [Voting Service Provider](#voting-service-provider).

#### Staking

Colloquial term for time-locking DCR in exchange for tickets.

## T

---

#### Testnet

A parallel [network](https://devdocs.decred.org/environments/testnet/) used for testing, where DCR can be obtained freely from faucets.

#### Ticket

Decred holders can time-lock DCR in exchange for tickets. Tickets grant their holder the ability to vote, and it is through ticket voting that major governance decisions are made. The DCR locked to buy a ticket is unlocked after that ticket is called to vote on-chain (this averages around one month, maximum around 4 months), along with a reward. Around 0.5% of tickets are not called before they expire; in this case the DCR is un-locked but no reward is granted.

#### Ticket pool

The pool of live tickets that are available to be called to vote. The target size for the [ticket pool](proof-of-stake/overview.md) is 40,960.

#### Ticket price

The amount of DCR one must time-lock in order to buy a ticket. The ticket price is algorithmically adjusted with the goal of keeping the ticket pool at an optimal size of 40,960 tickets. The algorithm for setting the ticket price was changed by [DCP-0001](https://github.com/decred/dcps/blob/master/dcp-0001/dcp-0001.mediawiki), the first consensus rules change to be adopted using an on-chain vote.

#### Ticket-splitting

The process of multiple participants pooling their funds to purchase
Proof-of-Stake tickets.

In the past, [dcr-split-ticket-matcher](https://github.com/matheusd/dcr-split-ticket-matcher)
allowed participants to coordinate split ticket purchases without giving up
custody of their DCR.
However, as of Decred release 1.6, this software is no longer supported.

#### Tor

[The Onion Router](https://www.torproject.org/) (Tor) is free open-source software which enables users to improve security and privacy when communicating over a network. It is commonly used to protect against Internet traffic analysis or to enable anonymous communication.

#### Transaction fees

A fee paid to have your transaction included in a block. The default transaction fee for Decred is 0.0001 DCR/kB.

#### Treasury

The [Decred Treasury](https://dcrdata.decred.org/address/Dcur2mcGjmENx4DhNqDctW5wJCVyT3Qeqkx) holds funds for use in development of the project. Decisions about how to use these funds are made through [Politeia](#politeia) proposals and voting.

## U

---

#### Unmined ticket

Immediately after a ticket is bought it is unmined until the transaction is included in a block.

#### UTXO

An Unspent Transaction Output (UTXO) is an output of a transaction that has not been spent, i.e. some amount of DCR that can be used as an input in a new transaction that spends the DCR. The sum of all UTXOs a user has the private keys to spend is the user’s total balance. 

## V

---

#### Voted ticket

Tickets that have been called and responded with votes; once a ticket has voted, the DCR locked to buy it becomes spendable after 256 blocks.

#### Voters

People who buy tickets and vote with them.

#### Voting Service Provider

Non-custodial services that can be authorized to vote on behalf of a ticket, usually providing a number of geographically distributed servers to reduce the chance of missed tickets.

## W

---

#### Wallet

A file that stores private keys. Wallets allow their owner to view and create transactions on the blockchain. The Decred team maintains a GUI wallet (Decrediton) and Command Line Interface (CLI) wallet tools for advanced users. Decred is also supported by numerous 3rd party wallets.

#### Watch-only

An address or pubkey script stored in the wallet without the corresponding private key, allowing the wallet to watch for outputs but not spend them.

#### Work

The cumulative number of hashes calculated by proof-of-work miners to produce the blockchain.
