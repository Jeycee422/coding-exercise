# Project Tracker — Rails Take-Home Starter

Starter repository for Codevelopr's Junior Ruby on Rails Developer take-home exercise.

> **This repository is intentionally incomplete.** The missing Task functionality is part of the coding exercise.
> **Start with [TAKE_HOME.md](TAKE_HOME.md).**

The app is a small Rails 8 / Hotwire application that already supports full CRUD for **Projects**.

## Requirements

- Ruby 3.4.x (developed with 3.4.8; see `.ruby-version`)
- PostgreSQL, running locally (the default `config/database.yml` connects over the local socket as your OS user)
- Node is **not** required (Importmap, no JS build step)

## Setup

```bash
bin/setup
```

This installs gems, creates and migrates the database, loads the seed data and starts the server.
To set up without starting the server, run `bin/setup --skip-server`.

Manual alternative:

```bash
bundle install
bin/rails db:prepare db:seed
```

## Run

```bash
bin/rails server
```

Then open <http://localhost:3000>.

## Test

```bash
bin/rails test
```

The starting test suite should pass before you change anything.

## Exercise

See [TAKE_HOME.md](TAKE_HOME.md) for the instructions.

---

<!-- Candidates: replace everything below this line with your own notes. -->

## Submission notes

_Describe anything unfinished, assumptions you made, and how to run your tests._

## If this application eventually contained millions of tasks, what database or query changes would you consider?

_Your answer here._

## AI tools

_If you used AI tools, list which ones and what you used them for._
