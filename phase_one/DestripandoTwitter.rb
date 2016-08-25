#meter a las entrañas de la cuenta de twitter de una persona famosa
#convertir la infomación que nos interesa de un archivo de HTML en objetos de Ruby para usarlos dentro de nuestro programa

#step 1  Guardar una página de HTML
require 'Nokogiri'
require 'open-uri'

# puts html_file.read

class TwitterScrapper
  def initialize(url)
    @url = url
    ruby_access_html
  end

  def ruby_access_html
    #$curl @url > twitter_account.html
    html_file = open(@url)
    @doc = Nokogiri::HTML(File.open(html_file))
  end

  def extract_username
    profile_name = @doc.search(".ProfileHeaderCard-name > a")
    profile_name.first.inner_text
  end

  def extract_tweets
    tweets = []
    @doc.search(".js-tweet-text").children.each { |node| tweets << node.inner_text}
    tweets
  end

  def tweet_dates
    dates = []
    @doc.search(".js-short-timestamp").children.each { |node| dates << node.inner_text}
    dates
  end

  def retweets
    @activity = []
    @doc.search(".ProfileTweet-actionCountForPresentation").children.each { |node| @activity << node.inner_text}
    @activity.uniq
  end

  def favorites
    @activity.uniq
  end

  def extract_stats
    stats = []
    @doc.search(".ProfileNav-value").children.each { |node| stats << node.inner_text}
    stats
  end

end



#$ ruby DestripandoTwitter.rb https://twitter.com/El_Brody
#$ ruby DestripandoTwitter.rb https://twitter.com/CH14_

persona = TwitterScrapper.new *ARGV 

puts "Username: #{persona.extract_username}"
puts "________________________________________________________"
puts "Stats: Tweets: #{persona.extract_stats[0]}, Siguiendo #{persona.extract_stats[1]}, Seguidores: #{persona.extract_stats[2]}, Favoritos: #{persona.extract_stats[3]}"
puts "________________________________________________________"
puts "Tweets:" 
puts "#{persona.tweet_dates[0]} :#{persona.extract_tweets[0]}"
puts "Retweets #{persona.retweets[0]}, Favorites: #{persona.favorites[1]}"
puts
puts "#{persona.tweet_dates[1]} :#{persona.extract_tweets[1]}"
puts "Retweets #{persona.retweets[2]}, Favorites: #{persona.favorites[3]}"
puts
puts "#{persona.tweet_dates[2]} :#{persona.extract_tweets[2]}"
puts "Retweets #{persona.retweets[4]}, Favorites: #{persona.favorites[5]}"
puts "________________________________________________________"


# $ ruby twitter_scrapper.rb
# Username: Chicharito Hernandez
# ----------------------------------------------------------------------------
# Stats: Tweets: 734, Siguiendo: 298, Seguidores: 4,95M, Favoritos: 70
# ----------------------------------------------------------------------------
# Tweets: 
#   30 de mar.: Somos futbolistas unidos por una gran causa. Entendamos juntos al autismo @iluminemosazul https://www.youtube.com/watch?v=g3umuOWdMyA … #Iluminemosdeazul 
#   Retweets:862, Favorites:1,6K

#   30 de mar.: Felicidades churuuuuuu @SergioRamos que la pases muy bien!!!  #top pic.twitter.com/ulhTMRk38V 
#   Retweets:2,6K, Favorites:5,3K

#   29 de mar.: Fe y confianza!!!... Muchísimas gracias por el gran apoyo en LA!... #blessed pic.twitter.com/oOiEmYhKQt 
#   Retweets:3,3K, Favorites:7K


