require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

puts doc.search("ul.components-list" && "li.components-item").inner_html

puts doc.search("li.directions-item" && "p.directions-item-text").inner_html
