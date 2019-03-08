require "nokogiri"
require "pry"

def create_project_hash
html = File.read("fixtures/kickstarter.html")
kickstarter =  Nokogiri::HTML(html)
  kickstarter.css(".project-card")
  binding.pry 
end