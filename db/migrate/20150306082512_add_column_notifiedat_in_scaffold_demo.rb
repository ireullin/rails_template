class AddColumnNotifiedatInScaffoldDemo < ActiveRecord::Migration
  def change
    add_column :scaffold_demos, :notified_at, :timestamps
  end
end
