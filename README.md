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

Full instructions are in [TAKE_HOME.md](TAKE_HOME.md). Timebox: about 60 minutes.

### What to do

1. Fork this repository and clone your fork.
2. Run `bin/setup` and `bin/rails test` to confirm the starter works.
3. Add **Tasks** to Projects (a Project has many Tasks; a Task belongs to one Project).
4. Commit your work to your fork, add your notes to the sections at the bottom of this README, and send us the URL of your public fork.

### Acceptance criteria

**Required**

- [ ] **Model and database:** a `Task` model with `project_id`, `title`, `status` and `due_date`, using appropriate column types and a database foreign key to `projects`. The due date is optional.
- [ ] **Relationships:** `Project has_many :tasks, dependent: :destroy` and `Task belongs_to :project`. Deleting a project deletes its tasks.
- [ ] **Validations:** a task requires a title; status is limited to `pending`, `in_progress` and `completed`; a project still requires a name.
- [ ] **Show page:** `/projects/:id` lists the project's tasks, each with title, status and due date, and the "not implemented yet" placeholder is removed.
- [ ] **Create task:** the Project page has a form (Title, Status, Due Date). A valid submission shows the new task and keeps the user on the Project page. An invalid submission shows meaningful errors and keeps the entered values where reasonable.
- [ ] **Mark Complete:** every incomplete task has a **Mark Complete** control that sets its status to `completed` without a full page reload (Turbo, Stimulus, `fetch` or vanilla JS are all fine).
- [ ] **Styling:** Pending, In Progress and Completed are visually distinct and the list is easy to read.
- [ ] **Conventions:** RESTful routes and controller actions, strong parameters, `form_with`, path helpers. The existing tests still pass.
- [ ] **README:** the "millions of tasks" question is answered and any unfinished work is noted.

**Bonus (only after the required items)**

- [ ] Show "3 of 5 tasks completed" on the Project page.
- [ ] At least one meaningful automated test for the Task functionality.
- [ ] Sort tasks so incomplete ones appear before completed ones.

**Also**

- [ ] If you used AI tools, say which and what for. Be ready to explain all of your code in the follow-up interview.

---

<!-- Candidates: replace everything below this line with your own notes. -->

## Submission notes

_Describe anything unfinished, assumptions you made, and how to run your tests._

## If this application eventually contained millions of tasks, what database or query changes would you consider?

_Your answer here._

## AI tools

_If you used AI tools, list which ones and what you used them for._
