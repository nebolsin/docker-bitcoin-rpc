nebolsin/bitcoin-rpc
====================
[![](https://images.microbadger.com/badges/version/nebolsin/bitcoin-rpc.svg)](https://microbadger.com/images/nebolsin/bitcoin-rpc)
[![](https://images.microbadger.com/badges/image/nebolsin/bitcoin-rpc.svg)](https://microbadger.com/images/nebolsin/bitcoin-rpc)
[![](https://images.microbadger.com/badges/commit/nebolsin/bitcoin-rpc.svg)](https://microbadger.com/images/nebolsin/bitcoin-rpc)

A minimalistic Docker image for running Bitcoin Core node in RPC mode.

Bitcoin Core is built in [disable-wallet mode](https://github.com/bitcoin/bitcoin/blob/master/doc/build-unix.md#disable-wallet-mode).

**WIP** This is an experimental repo, don't use it **WIP**

Usage
-----

```shell
> docker run --rm \
    -v ./.data:/home/bitcoin/.bitcoin \
    -p 8332:8332 \
    -p 8333:8333 \
    -e BITCOIND_PRINTTOCONSOLE=1 \
    -e BITCOIND_TESTNET=1 \
    -e BITCOIND_PRUNE=2048 \
    -it nebolsin/bitcoin-rpc
```

License
-------

Configuration files and code in this repository are distributed under the
[MIT license](LICENSE).

License information for the software contained in nebolsin/bitcoin-rpc
Docker image:

* [Bitcoin Core](https://github.com/bitcoin/bitcoin/blob/master/COPYING)
* [confd](https://github.com/kelseyhightower/confd/blob/master/LICENSE)
