feature 'adding bookmarks' do 
  scenario 'it should add bookmarks to the database' do 
    visit ('/')
    click_link 'Add Bookmarks'
    fill_in("url", with: "www.espn.com") 
    click_button "Add Bookmark"
    expect(page).to have_content "www.espn.com"
  end
end