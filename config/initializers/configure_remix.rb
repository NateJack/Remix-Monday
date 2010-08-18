require 'yaml'

SETTINGS = YAML.load_file(File.join(Rails.root, "config", "settings.yml"))

SETTINGS["group_id"] = HTTParty.get("http://api.soundcloud.com/resolve?url=#{SETTINGS["group"]}", :format => :xml)["group"]["id"]

SETTINGS["admin_id"] = HTTParty.get("http://api.soundcloud.com/resolve?url=#{SETTINGS["admin"]}", :format => :xml)["user"]["id"]

SETTINGS["instructions"] = File.read("#{RAILS_ROOT}/config/instructions.txt")