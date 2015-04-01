require "rubygems"
require "open-uri"
require "nokogiri"
require 'terminal-table'

require "bilisim_sozlugu/version"

module BilisimSozlugu
  URL = "http://www.tbd.org.tr/index.php?sayfa=sozluk&mi1&tipi=ara&harf=A&arama="

  def self.search(word)
    words = []
    call_url = URL + word
    page = Nokogiri::HTML(open(call_url))
    rows = page.css("table").css('tbody').css('tr')
    if rows.last.text == "Aranan Kelime "
      puts "Aradığınız kelime bulunamadı."
    else
      rows.each do |row|
        words << [row.children.first.children.text, row.children.last.text]
      end
      table = Terminal::Table.new :rows => words.drop(2)
      puts table
    end    
  end
end
