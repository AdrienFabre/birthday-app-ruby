feature 'Enter user birthday details' do
  scenario 'Enter the day and return it' do
    visit("/")
    find_field('day').should have_content('30')

  end

  scenario 'Ask for the month birth' do
    visit("/")
    find_field('month').should have_content('Nov')
  end

end
