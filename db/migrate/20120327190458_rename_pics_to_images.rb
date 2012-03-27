class RenamePicsToImages < ActiveRecord::Migration
  def change
    rename_table :pics, :images
  end
end
