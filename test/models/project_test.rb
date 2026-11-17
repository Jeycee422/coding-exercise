require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  test "is valid with a name and description" do
    assert Project.new(name: "Roadmap", description: "Planning").valid?
  end

  test "is valid without a description" do
    assert Project.new(name: "Roadmap").valid?
  end

  test "is invalid without a name" do
    project = Project.new(name: "")

    assert_not project.valid?
    assert_includes project.errors[:name], "can't be blank"
  end
end
