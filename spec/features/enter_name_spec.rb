feature 'Enter user name and display it' do
  scenario 'The welcome page ask for your name'do
    visit ('/')
    expect(page).to have_content "What's your name?"
  end
  scenario 'The welcome page return your name' do
    visit ('/')
    fill_in :name, with: "Erin"
    click_button "Submit"
    expect(page).to have_content "Erin"
  end
end
