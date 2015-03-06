class AddColumnsInScaffoldDemo < ActiveRecord::Migration
  def change
    add_column :scaffold_demos, :sex,  :integer, default: 1
    add_column :scaffold_demos, :adult,:integer, default: 1
    add_column :scaffold_demos, :job,  :string,  default: 'financial'
  end
end
