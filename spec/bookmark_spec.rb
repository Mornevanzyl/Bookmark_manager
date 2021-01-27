require_relative '../lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'contains some url bookmarks' do
      connection = PG. connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.youtube.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.co.uk');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.bbc.co.uk');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.youtube.com")
      expect(bookmarks).to include("http://www.google.co.uk")
      expect(bookmarks).to include("http://www.bbc.co.uk")
    end
  end

  
end