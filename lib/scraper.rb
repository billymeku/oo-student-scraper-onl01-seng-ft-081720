require 'open-uri'
require 'nokogiri'
require 'pry'


class Scraper

  def self.scrape_index_page(index_url)
    
    resp = Nokogiri::HTML(open(index_url))
    student_arr = resp.css('div.student-card')
    student_arr.collect do |student|
   
     {name: student.css('div.card-text-container h4.student-name').text,
      location: student.css('div.card-text-container p.student-location').text,
      profile_url: student.css('a')[0]['href']
      }
       
       end  
  end

  def self.scrape_profile_page(profile_url)
    resp = Nokogiri::HTML(open(profile_url))
    social_link = resp.css('div.social-icon-container a')
    social_link.collect do |student|
      { twitter:
    
  end

end

