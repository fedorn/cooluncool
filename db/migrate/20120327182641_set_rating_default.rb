class SetRatingDefault < ActiveRecord::Migration
  def up
    change_column :pics, :rating, :integer, :default => 0
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "Can't remove the default"
  end
end
