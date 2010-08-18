class User < SoundcloudAuth::GenericUser
  
  has_many :remixes
  
  def name
    full_name.empty? ? username : full_name
  end
  
  def uploaded(remix)
    remix.user_id == id
  end
  
  def admin?
    SETTINGS["admin_id"].to_s == soundcloud_id
  end
  
end
