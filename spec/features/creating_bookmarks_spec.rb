feature "Adding a new bookmark" do
  scenario "A user can add a bookmark to Bookmark Manager" do
    visit("/bookmarks/new")
    fill_in("url", with: "https://example.org")
    fill_in("title", with: "Test Bookmark")
    click_button("Submit")

    expect(page).to have_link("Test Bookmark", href: "https://example.org")
  end
end
