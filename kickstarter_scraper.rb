require "nokogiri"
require "pry"

def create_project_hash
html = File.read("fixtures/kickstarter.html")
kickstarter =  Nokogiri::HTML(html)
projects = kickstarter.css("li.project.grid_4")
further_in = projects.css("h2.bbcard_name strong a").text
description = projects.css("p.bbcard_blurb").text
locations = projects.css("span.location-name").text
percent_funded = 
binding.pry
further_in
end

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image link: project.css("div.project-thumbnail a img").attribute("src").value
#description