class AddTitleToRemixes < ActiveRecord::Migration
  def self.up
    add_column :remixes, :title, :string
  end

  def self.down
    remove_column :remixes, :title
  end
end
