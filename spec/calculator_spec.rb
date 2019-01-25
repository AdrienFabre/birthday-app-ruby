require 'calculator'
RSpec.describe Calculator do

  it "return birthday if the date selected is today" do
    Time.stub(:now).and_return(Time.mktime(2019,1,25))
    day_selected = 25
    month_selected = 1
    expect(Calculator.new(day_selected,month_selected).time_left).to eq 'birthday'

  end

  it "return the number of days between now and the date selected" do
    Time.stub(:now).and_return(Time.mktime(2019,1,25))
    day_selected = 26
    month_selected = 1
    expect(Calculator.new(day_selected,month_selected).time_left).to eq 1


  end
end
