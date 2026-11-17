class TasksController < ApplicationController
  before_action :set_project

  def create
    @task = @project.tasks.build(task_params)

    if @task.save
      redirect_to @project, notice: "Task added."
    else
      render "projects/show", status: :unprocessable_entity
    end
  end

  def update
    @task = @project.tasks.find(params[:id])
    @task.update(status: "completed")

    redirect_to @project
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def task_params
    params.expect(task: [:title, :status, :due_date])
  end
end