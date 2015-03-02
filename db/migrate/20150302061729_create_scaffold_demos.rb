class CreateScaffoldDemos < ActiveRecord::Migration
  def change
    create_table :scaffold_demos do |t|
      t.string :name
      t.text :comment

      t.timestamps null: false
    end
  end
end
