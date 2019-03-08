require "nokogiri"
require "pry"

def create_project_hash
html = File.read("fixtures/kickstarter.html")
kickstarter =  Nokogiri::HTML(html)
binding.pry
projects = kickstarter.css("li.project-grid-4").first.css(".bbcard_name").text
projects
end