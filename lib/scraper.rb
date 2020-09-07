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
    html = Nokogiri::HTML(open(profile_url))
    social_media_types = ["facebook", "twitter", "github", "linkedin"]
    social_media = html.css('div.social-icon-container a').map { |a|
      ref = a['href']
      site = self.url_type(ref)
      key = social_media_types.include?(site) ? site : "blog"
      {key.to_sym => ref}
    }.reduce { |cum, curr|
      cum.merge(curr)
    }
    
    bio = html.css('div.bio-block.details-block div.description-holder p').text
    quote = html.css('div.vitals-text-container div.profile-quote').text
    {bio: bio, profile_quote: quote}.merge(social_media)
  end
  
  
  

end

