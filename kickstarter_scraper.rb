require "nokogiri"

def create_project_hash
  Nokogiri::HTML(open(""))
end