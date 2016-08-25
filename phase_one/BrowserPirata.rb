#use Net::HTTP library to get the website and Nokogiri to parse the HTML returned by the server
require 'Nokogiri'
require 'open-uri'
require 'net/http'


class Page
  def initialize(url)
    #Recibe una url al crearse
    @url = url
    fetch!
  end

  def fetch!
    #http request y guarda la respuesta para usarse en otros métodos
    # html_file = open(@url)
    # @doc = Nokogiri::HTML(File.open(html_file))
    @res = Net::HTTP.get_response(URI(@url))
    @doc = Nokogiri::HTML(@res.body)
  end

  def links
    #Regresa un array de los links de la página (texto/url)
    links = []
    @doc.search(".nav-item").each { |node| links << node.inner_text}
    links
  end

  def link_path
    link_paths = []
    @doc.css("a").each { |link| link_paths << link.attr('href')}
    link_paths
  end

  def title
    #Regresa el título de la página
    @doc.xpath('//title').inner_text
  end
end

# #http://www.codea.mx
# page1 = Page.new *ARGV
# page1.title

# puts ""
# puts "Fetching..."
# puts "Título: #{page1.title}"
# puts "Links:"
# puts "  #{page1.links[0]}: #{page1.link_path[0]}"
# puts "  #{page1.links[1]}: #{page1.link_path[2]}"
# puts "  #{page1.links[2]}: #{page1.link_path[2]}"
# puts "  #{page1.links[3]}: #{page1.link_path[3]}"
# puts "  #{page1.links[4]}: #{page1.link_path[4]}"
# puts "  #{page1.links[5]}: #{page1.link_path[5]}"
# puts "  #{page1.links[6]}: #{page1.link_path[6]}"
# puts
# puts

class Browser

  def run!
    puts "Enter any website url and see it's page title and main links. Enter 'done' when you are finished."
    url = ""
    10.times do
      puts "Which website do you want to look at?"
      url = gets.chomp
      break if url == "done"
      page1 = Page.new(url)

      puts ""
      puts "Fetching..."
      puts "Título: #{page1.title}"
      puts "Links:"
      puts "  #{page1.links[0]}: #{page1.link_path[0]}"
      puts "  #{page1.links[1]}: #{page1.link_path[2]}"
      puts "  #{page1.links[2]}: #{page1.link_path[2]}"
      puts "  #{page1.links[3]}: #{page1.link_path[3]}"
      puts "  #{page1.links[4]}: #{page1.link_path[4]}"
      puts "  #{page1.links[5]}: #{page1.link_path[5]}"
      puts "  #{page1.links[6]}: #{page1.link_path[6]}"
      puts
      puts
    end
  end
end

Browser.new.run!
# # #http://www.codea.mx
# should add feature which check if gets is a url or not








