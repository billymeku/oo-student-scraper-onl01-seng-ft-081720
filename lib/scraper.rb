require_relative 'student'
require 'open-uri'
require 'pry'


class Scraper

  def self.scrape_index_page(index_url)
    
    doc = Nokogiri::HTML(open('https://learn-co-curriculum.github.io/student-scraper-test-page/index.html'))
    
    # binding.pry
    # stu_hash = JSON.parse(resp.body, symbolize_names:true)
    # student_arr = student_hash[:student]
    #     student_arr.collect do | student_hash|
    #         Student.new(student_hash)
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

