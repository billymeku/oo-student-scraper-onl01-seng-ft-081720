require 'open-uri'
require 'nokogiri'
require 'pry'


class Scraper

  def self.scrape_index_page(index_url)
    
    resp = Nokogiri::HTML(open(index_url))
    
    # binding.pry
    # stu_hash = JSON.parse(resp.body, symbolize_names:true)
    # student_arr = student_hash[:student]
    #     student_arr.collect do | student_hash|
    #         Student.new(student_hash)
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

