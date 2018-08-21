class Timer
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end
  def seconds= (new_seconds)
    @seconds = new_seconds%60
    @minutes = (new_seconds/60).to_i%60
    @hours = ((new_seconds/60)/60).to_i
  end

  def seconds
    @seconds
  end

  def time_string
    @second_string = format("%02d", @seconds)
    @minute_string = format("%02d", @minutes)
    @hour_string = format("%02d", @hours)
    return "#{@hour_string}:#{@minute_string}:#{@second_string}"
  end
end
