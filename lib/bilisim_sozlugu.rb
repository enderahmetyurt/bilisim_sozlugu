require "rubygems"
require "open-uri"
require "nokogiri"
require 'terminal-table'
require "bilisim_sozlugu/version"

module BilisimSozlugu
  URL          = "http://eski.tbd.org.tr/index.php?sayfa=sozluk&mi1&tipi=ara&harf=A&arama=".freeze
  CSS_SELECTOR = "table tbody tr".freeze

  def self.search(word)
    call_url = URL + word
    page     = Nokogiri::HTML(open(call_url))
    rows     = page.css(CSS_SELECTOR)

    if rows.last.text.match("Aranan Kelime")
      puts "Aradığınız kelime bulunamadı."
    else
      words = rows.map { |row| [row.children.first.children.text, row.children.last.text] }
      table = Terminal::Table.new :rows => words.drop(2)
      puts table
    end
  end
end
