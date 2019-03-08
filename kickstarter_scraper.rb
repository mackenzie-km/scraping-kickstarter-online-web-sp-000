require "nokogiri"
require "pry"

def create_project_hash
  projects = {}
html = File.read("fixtures/kickstarter.html")
kickstarter =  Nokogiri::HTML(html)
projects = kickstarter.css("li.project.grid_4")

projects.each do |project|
title = project.css("h2.bbcard_name strong a").text
projects[title.to_sym] = {
:image_link => project.css("div.project-thumbnail a imag").attribute("src").value,
:location => project.css("span.location-name").text,
:location => project.css("li.first.funded").text
}
#binding.pry


end 


end
