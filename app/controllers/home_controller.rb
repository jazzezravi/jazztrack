class HomeController < ApplicationController
  OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
  def index
    fetch_hindu
    @news = News.all
    @news=@news.reverse
  end
  def news_db_inserter(content,url)
    require 'sqlite3'
    db=SQLite3::Database.new( "././db/production.sqlite3" )
    @urls=db.execute('select url from news;')
    ins = db.prepare('insert into news (content,url,created_at,updated_at) values (?,?,?,?)')  
    @urls_array=[]  
    @urls.each do |x|
      @urls_array << x[0].to_s
    end  
    unless @urls_array.include?(url)
      puts "inserting entry #{content} and #{url}"
      x=Time.at(1364046539)
      ins.execute(content,url,"#{Time.now}","#{Time.now}") 
    end
  end
  def fetch_hindu
    require 'open-uri'
    require 'nokogiri'
    doc = Nokogiri::HTML(open("http://tamil.thehindu.com/just-in/"))
    doc.css("h4[class=secTitle]").reverse.each do |h4|
      news= h4.search("a")[0].text rescue news =h4.text
      url= h4.search("a")[0]['href'] rescue url=""
      news_db_inserter(news,url)
    end
  end
end
