# Safe to run repeatedly: projects are looked up by name before being created.
[
  {
    name: "Customer Portal",
    description: "Customer-facing account and billing application."
  },
  {
    name: "Internal Operations",
    description: "Internal staff workflow tools."
  },
  {
    name: "Mobile App",
    description: "Companion mobile application."
  }
].each do |attributes|
  Project.find_or_create_by!(name: attributes[:name]) do |project|
    project.description = attributes[:description]
  end
end
