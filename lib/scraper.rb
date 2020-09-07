require 'open-uri'
require 'nokogiri'
require 'pry'


class Scraper

  def self.scrape_index_page(index_url)
    
    resp = Nokogiri::HTML(open(index_url))
    student_arr = resp.css('div.student-card')
    student_arr.collect do |student|
      {name: student.css 
    end
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

