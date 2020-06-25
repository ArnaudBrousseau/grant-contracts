# OpenGrant Smart Contracts

[![NoahMarconi](https://circleci.com/gh/NoahMarconi/grant-contracts.svg?style=shield)](https://circleci.com/gh/NoahMarconi/grant-contracts)
[![codecov](https://codecov.io/gh/NoahMarconi/grant-contracts/branch/master/graph/badge.svg)](https://codecov.io/gh/NoahMarconi/grant-contracts)
[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE)
[![Dependency Check](https://img.shields.io/david/noahmarconi/grant-contracts)](https://david-dm.org/NoahMarconi/grant-contracts)
[![Dependency Check](https://img.shields.io/david/dev/noahmarconi/grant-contracts)](https://david-dm.org/NoahMarconi/grant-contracts?type=dev)


Reference Implementation for OpenGrant proposed EIP.

Write up and announcement here: https://medium.com/@jamesfickel/open-grants-standard-erc-6ed9e137d4fe

EIP Draft: https://github.com/JFickel/EIPs/blob/draft_grant_standard/EIPS/eip-draft_grant_standard.md

Front end project: https://github.com/NoahMarconi/grants-platform-mono

Project Sponsors: https://github.com/JFickel & https://molochdao.com/


# Variations

Grants come with many variations. 

  - Managed or Unmanaged
  - Token or Ether
  - With Funding Deadline or Without
  - With Funding Target or Without
  - Fixed Grantee Allocations or Proportion Based Grantee Allocations
  - With Contract Expiration or Without
  - Capped or Uncapped

Reference permutations include:

  - Managed / No Funding Deadline / Uncapped / With Contract Expiration / With Token


# Set up guide

```
docker pull ethereum/solc:stable
npm i
```

Tested with node/npm versions:

```
node --version
# > v12.16.3

npm --version
# > 6.14.4
```

## Lint Contracts

```
npm run lint
```

## Build Contracts

```
npm run build
```

## Test Contracts

Run all tests
```
npm run test
```

Check code coverage
```
npm run coverage
```

Run single test
```
# npm run test -- test/[FILENAME]
# e.g.
npm run test -- test/ManagedCapped/Grant-Funding.spec.ts
```

Test docs:

  - https://ethereum-waffle.readthedocs.io/

## Deploy

First set up the `.env` file by renaming .example-env: `cp .example-env .env` and filling in the private key and infura project ID.

```
npm run factory:deploy:ropsten
```