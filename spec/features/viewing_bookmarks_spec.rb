require "pg"

feature "Viewing bookmarks" do
  scenario "A user can see the bookmarks" do
    Bookmark.create(url: "https://www.youtube.com", title: "Youtube")
    Bookmark.create(url: "https://www.twitter.com", title: "Twitter")
    Bookmark.create(url: "https://www.google.com", title: "Google")

    visit("/bookmarks")

    expect(page).to have_link("Youtube", href: "https://www.youtube.com")
    expect(page).to have_link("Twitter", href: "https://www.twitter.com")
    expect(page).to have_link("Google", href: "https://www.google.com")
  end
end
