json.array!(@scaffold_demos) do |scaffold_demo|
  json.extract! scaffold_demo, :id, :name, :comment
  json.url scaffold_demo_url(scaffold_demo, format: :json)
end
