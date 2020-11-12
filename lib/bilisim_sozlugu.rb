# typed: true

require "rubygems"
require "open-uri"
require "nokogiri"
require 'terminal-table'
require "sorbet-runtime"
require "bilisim_sozlugu/version"

module BilisimSozlugu
  extend T::Sig

  URL          = T.let("http://eski.tbd.org.tr/index.php?sayfa=sozluk&mi1&tipi=ara&harf=A&arama=".freeze, String)
  CSS_SELECTOR = T.let("table tbody tr".freeze, String)

  sig {params(word: String).void}
  def self.search(word)
    call_url = T.let(URL + word, String)
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
