# Junior Ruby on Rails Developer Take-Home Exercise

## Timebox

Please spend approximately **60 minutes** on this exercise.

It is okay if you do not finish every requirement. We care more about:

- how you structure your solution
- Rails conventions
- correctness
- readability
- your reasoning

than about completing every optional detail.

If you run out of time, document unfinished work in your README or submission notes.

## Getting started

See [README.md](README.md) for setup. In short:

```bash
bin/setup
bin/rails test
```

## Scenario

The application currently contains Projects. Your task is to add **Tasks** to each project.

- A Project can have many Tasks.
- A Task belongs to one Project.

## Requirement 1 — Database and ActiveRecord

Create a `Task` model with:

```
project_id
title
status
due_date
```

Use appropriate Rails data types.

Relationships should be:

```ruby
class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
end

class Task < ApplicationRecord
  belongs_to :project
end
```

Requirements:

- Task title is required.
- Project name is required (already implemented).
- Task status must only allow:
  - `pending`
  - `in_progress`
  - `completed`
- A project deletion should also delete its tasks.
- Use an appropriate database foreign key.

Use normal Rails conventions.

## Requirement 2 — Project Show Page

Update `/projects/:id` to display the project's tasks.

Each task should show:

- title
- status
- due date

Example:

```
Customer Portal

Tasks

Fix login bug             Pending       Nov 20, 2026
Create dashboard          In Progress   Nov 22, 2026
Update documentation      Completed     Nov 25, 2026
```

## Requirement 3 — Create a Task

On the Project show page, provide a form to create a task.

Fields:

- Title
- Status
- Due Date

After successfully creating a task:

- the task should appear under the project
- the user should remain on, or return to, the Project page

If validation fails:

- display meaningful validation errors
- preserve the entered values where reasonably possible

Use conventional Rails routing and controller design.

## Requirement 4 — JavaScript / Hotwire

Each incomplete task should have a **Mark Complete** control.

When clicked, update the task status to `completed` **without performing a full browser page reload**.

You may use Turbo, Stimulus, `fetch`, or vanilla JavaScript. You do not need to use a specific approach. We are evaluating whether you understand basic client/server interaction.

## Requirement 5 — Basic Styling

Add simple styling so that the task list is easy to read.

Visually distinguish:

- Pending
- In Progress
- Completed

Do not spend significant time polishing the UI. Simple and readable is enough.

## Bonus

Only attempt these if the required functionality is complete.

- **Bonus A** — Display `3 of 5 tasks completed` on the Project page.
- **Bonus B** — Add at least one meaningful automated test for the Task functionality.
- **Bonus C** — Sort tasks so incomplete tasks appear before completed tasks.

## Submission

1. Fork this repository.
2. Create your implementation in your fork.
3. Commit your work using Git.
4. Send us the URL to your **public fork** when complete.

Please do not create a pull request against the original repository unless specifically requested.

### README question

At the end of your submission, add a short section to your README answering:

> If this application eventually contained millions of tasks, what database or query changes would you consider?

A short answer is enough. (A placeholder section is already in the README.)

### AI tools

You may use AI coding assistants. If you do, add a short section to your README describing:

- which AI tool(s) you used
- what you used them for

You should be prepared to explain all submitted code during the follow-up interview.

## Evaluation

We will primarily look at:

- Rails conventions
- ActiveRecord relationships
- migrations and foreign keys
- model validation
- RESTful routing
- controller structure
- Ruby readability
- JavaScript / Hotwire understanding
- basic UI quality
- ability to explain your implementation

Do not over-engineer the solution.
