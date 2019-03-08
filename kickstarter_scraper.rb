require "nokogiri"
require "pry"

def create_project_hash
  projects = {}
html = File.read("fixtures/kickstarter.html")
kickstarter =  Nokogiri::HTML(html)
projects = kickstarter.css("li.project.grid_4")
titles = projects.css("h2.bbcard_name strong a").text
description = projects.css("p.bbcard_blurb").text
locations = projects.css("span.location-name").text
percent_funded = projects.css("li.first.funded").text

projects.each do |project|
project.css("h2.bbcard_name strong a").text
binding.pry
projects[titles.to_sym] = {}

end 

projects
end
