###############################################################################
# Basic scraper
###############################################################################
require 'rubygems'
require 'nokogiri'
require 'open-uri'

starting_url = 'https://github.com/norman/friendly_id/commits/master'
github = open(starting_url).read

parser = Nokogiri::HTML(github)
parser.search("#commit .group").each do |envelope|
  envelope.search(".envelope .human .message pre a").each do |message|
    puts message.text
  end
  exit
end
