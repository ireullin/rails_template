json.array!(@rows) do |row|
  json.extract! row, :id, :name, :comment
  json.url scaffold_demo_url(row, format: :json)
end
