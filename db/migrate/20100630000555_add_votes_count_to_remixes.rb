class AddVotesCountToRemixes < ActiveRecord::Migration
  def self.up
    add_column :remixes, :votes_count, :integer, :default => 0
  end

  def self.down
    remove_column :remixes, :votes_count
  end
end
