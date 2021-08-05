# Commit Conventions

This project uses [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/) loosely as the specification
for our commits.

Commit message will be in the format:

```
type(scope): title

body
```

This page will document the types and scopes used.

# Types

| Type                  | Description                                               |
| --------------------- | --------------------------------------------------------- |
| [fix](#fix)           | Fixes bug in the Docker image or configurations           |
| [feat](#feat)         | Adds a new feature into the docker image                  |
| [remove](#remove)     | Remove or deprecated features from the docker image       |
| [docs](#docs)         | Add documentation                                         |
| [ci](#ci)             | Changed the CI pipeline                                   |
| [release](#release)   | Initiate a release (machine initiated)                    |
| [config](#config)     | Update configuration of the repository                    |
| [refactor](#refactor) | Refactor the dockerfile                                   |
| [chore](#chore)       | Any chores, uncategorized, or small mistakes (like typos) |

## fix

Fixes bug in the Docker image or configurations

| **V.A.E**       | V.A.E values                                                       |
| --------------- | ------------------------------------------------------------------ |
| verb            | fix                                                                |
| application     | when this commit is applied, it will _fix_ `<title>`               |
| example         | fix: dropdown flickering                                           |
| example applied | when this commit is applied, it will _fix_ **dropdown flickering** |

| Scope    | Description                                  | Bump    |
| -------- | -------------------------------------------- | ------- |
| default  | Generic fixes not under `docker` or `config` | `patch` |
| `docker` | Fixes in the docker image                    | `patch` |
| `config` | Fixes in configuration                       | `nil`   |

## feat

Adds a new feature into the docker image

| **V.A.E**       | V.A.E values                                                                                                 |
| --------------- | ------------------------------------------------------------------------------------------------------------ |
| verb            | add                                                                                                          |
| application     | when this commit is applied, it will _add_ `<scope>, <title>, to the docker image`                           |
| example         | feat(narwhal): a swiss army knife for docker                                                                 |
| example applied | when this commit is applied, it will _add_ `narwhal`, **a swiss army knife for docker**, to the docker image |

| Scope   | Description                              | Bump    |
| ------- | ---------------------------------------- | ------- |
| default | Adds a new feature into the docker image | `minor` |

## remove

Remove or deprecated features from the docker image

| **V.A.E**       | V.A.E values                                                                                                              |
| --------------- | ------------------------------------------------------------------------------------------------------------------------- |
| verb            | remove                                                                                                                    |
| application     | when this commit is applied, it will _remove_ `<scope> from the docker image because it is <title>`                       |
| example         | remove(narwhal): deprecated over docker-gc                                                                                |
| example applied | when this commit is applied, it will _remove_ `narwhal` from the docker image because it is **deprecated over docker-gc** |

| Scope   | Description       | Bump    |
| ------- | ----------------- | ------- |
| default | Removed a package | `major` |

## docs

Add documentation

| **V.A.E**       | V.A.E values                                                                     |
| --------------- | -------------------------------------------------------------------------------- |
| verb            | document                                                                         |
| application     | when this commit is applied, it will _document_ `<title>`                        |
| example         | docs(dev): how to setup dev environment                                          |
| example applied | when this commit is applied, it will _document_ **how to setup dev environment** |

| Scope   | Description                                                 | Bump  |
| ------- | ----------------------------------------------------------- | ----- |
| default | Adds a generic documentation not related to `dev` or `user` | `nil` |
| `user`  | Adds a user-side documentation                              | `nil` |
| `dev`   | Adds a developer-side (contributing) documentation          | `nil` |

## ci

Changed the CI pipeline

| Scope   | Description             | Bump  |
| ------- | ----------------------- | ----- |
| default | Update CI configuration | `nil` |

## release

Initiate a release (machine initiated)

| Scope   | Description               | Bump  |
| ------- | ------------------------- | ----- |
| default | Machine initiated release | `nil` |

## config

Update configuration of the repository

| **V.A.E**       | V.A.E values                                                                      |
| --------------- | --------------------------------------------------------------------------------- |
| verb            | configure                                                                         |
| application     | when this commit is applied, it will _configure_ `<title>`                        |
| example         | config(lint): hadolint to check for HD1192                                        |
| example applied | when this commit is applied, it will _configure_ **hadolint to check for HD1192** |

| Scope    | Description                                                                  | Bump    |
| -------- | ---------------------------------------------------------------------------- | ------- |
| default  | Updates the configuration of the repository, not related to the other scopes | `nil`   |
| `lint`   | Add, update or remove linters                                                | `nil`   |
| `fmt`    | Add, updatge or remove formatters                                            | `nil`   |
| `build`  | Add, update or change buyild pipelines and generators                        | `patch` |
| `env`    | Add, update or change environment                                            | `patch` |
| `ignore` | Add, update or change ignore configurations                                  | `nil`   |

## refactor

Refactor the dockerfile

| **V.A.E**       | V.A.E values                                                                                             |
| --------------- | -------------------------------------------------------------------------------------------------------- |
| verb            | refactor                                                                                                 |
| application     | when this commit is applied, it will _refactor_ `<title>`                                                |
| example         | refactor: docker to use multistage build, improving build time                                           |
| example applied | when this commit is applied, it will _refactor_ **docker to use multistage build, improving build time** |

| Scope   | Description             | Bump    |
| ------- | ----------------------- | ------- |
| default | Refactor the dockerfile | `patch` |

## chore

Any chores, uncategorized, or small mistakes (like typos)

| Scope   | Description | Bump  |
| ------- | ----------- | ----- |
| default | chores      | `nil` |

# Special Scopes

| Scope        | Description                    | Bump  |
| ------------ | ------------------------------ | ----- |
| `no-release` | Prevent release from happening | `nil` |
