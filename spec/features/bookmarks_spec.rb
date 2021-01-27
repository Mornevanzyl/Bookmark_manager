feature 'Bookmarks' do
  scenario 'the page returns an OK status code' do
    visit('/bookmarks')
    expect(page.status_code).to eq(200)
  end

  scenario 'the page returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.youtube.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.google.co.uk');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.bbc.co.uk');")

    visit('/bookmarks')
    expect(page).to have_content("http://www.youtube.com")
    expect(page).to have_content("http://www.google.co.uk")
    expect(page).to have_content("http://www.bbc.co.uk")
  end
end
