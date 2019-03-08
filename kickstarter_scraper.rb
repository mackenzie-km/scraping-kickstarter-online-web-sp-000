require "nokogiri"
require "pry"

def create_project_hash
html = File.read("fixtures/kickstarter.html")
kickstarter =  Nokogiri::HTML(html)
projects = kickstarter.css("project-grid-4").first 
  binding.pry 
end