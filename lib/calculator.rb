class Calculator

  def initialize(day,month)
    @day = day
    @month = month
    @start_date = Time.now
    @end_date = Time.new(Time.now.year, @month.to_i, @day.to_i)
  end

  def time_left
    return 'birthday'if @end_date.day == @start_date.day
    @end_date += 365*24*60*60 if  @end_date.day < @start_date.day
    ((@end_date. - @start_date).to_i/60/60/24) + 1
  end
end
