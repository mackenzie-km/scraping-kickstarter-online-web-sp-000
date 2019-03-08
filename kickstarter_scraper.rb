require "nokogiri"

def create_project_hash
  Nokogiri::HTML(open("http://165.227.31.156:45268/fixtures/kickstarter.html"))
end