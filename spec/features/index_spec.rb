feature 'index page' do 
  scenario 'it should have an index page' do 
    visit('/')
    expect(page).to have_content "Welcome to bookmarks"
  end

  scenario 'it has a button that shows us a list of bookmarks' do
    visit('/')
    click_link 'Show my Bookmarks'
    expect(page.status_code).to eq 200
  end

  scenario 'it has a button that lets us add bookmarks' do 
    visit('/')
    click_link 'Add Bookmarks'
    expect(page.status_code).to eq 200 
  end

end