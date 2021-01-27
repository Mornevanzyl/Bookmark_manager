require_relative '../lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'contains some url bookmarks' do
      Bookmark.create("http://www.youtube.com")
      Bookmark.create("http://www.google.co.uk")
      Bookmark.create("http://www.bbc.co.uk")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.youtube.com")
      expect(bookmarks).to include("http://www.google.co.uk")
      expect(bookmarks).to include("http://www.bbc.co.uk")
    end
  end

  describe '.create' do 
    it 'creates a new bookmark' do 
      Bookmark.create('www.testbookmark.com')
      
      expect(Bookmark.all).to include 'www.testbookmark.com'
    end
  end

end