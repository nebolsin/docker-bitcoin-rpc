#!/usr/bin/env bash
set -o errexit
set -o pipefail

/usr/local/bin/confd -onetime -backend env

if [ $(echo "$1" | cut -c1) = "-" ]; then
  echo "$0: assuming arguments for bitcoind"

  set -- bitcoind "$@"
fi

if [ $(echo "$1" | cut -c1) = "-" ] || [ "$1" = "bitcoind" ]; then
  mkdir -p "${BITCOIND_DATADIR}"
  chmod 700 "${BITCOIND_DATADIR}"
  chown -R bitcoin "${BITCOIND_DATADIR}"

  set -- "$@"
fi

if [ "$1" = "bitcoind" ] || [ "$1" = "bitcoin-cli" ] || [ "$1" = "bitcoin-tx" ]; then
  echo
  exec su-exec bitcoin "$@"
fi

echo
exec "$@"
