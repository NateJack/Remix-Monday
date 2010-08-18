class SoundcloudAuthMigration < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      
      t.string :soundcloud_id
      t.string :username
      t.string :access_token
      t.string :access_secret

      t.string :remember_token
      t.datetime :remember_token_expires_at

      # This information is automatically kept
      # in-sync at each login of the user. You
      # may remove any/all of these columns.
      
      t.string :plan
      t.string :avatar_url
      t.string :website_title
      t.string :permalink
      t.string :city
      t.string :uri
      t.string :country
      t.string :discogs_name
      t.string :website
      t.string :full_name
      t.integer :followers_count
      t.string :description
      t.string :permalink_url
      t.integer :followings_count
      t.integer :track_count
      t.string :myspace_name

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
