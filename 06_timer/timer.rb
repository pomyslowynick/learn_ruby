class Timer
     attr_accessor :timer

  def initialize
      @timer = 0
  end
  def seconds
      @timer
  end
  def seconds=(sec)
      @timer = sec
  end
  def time_string
      if @timer > 9 and @timer < 60
        @timer = "00:00:" + @timer.to_s
      elsif @timer/3600 >= 1
        hou = @timer/3600
        minu = (@timer - 3600)/60
        secun = (@timer - 3600) - minu*60
        @timer = "0#{hou.to_s}:0#{minu.to_s}:#{secun.to_s}"
      elsif @timer > 60
        uno = @timer/60
        secun = @timer - uno*60
        @timer = "00:0#{uno.to_s}:0#{secun.to_s}"
      else
        @timer = "00:00:0" + @timer.to_s
      end
  end
  
end

a = Timer.new
a.seconds=32
print a.time_string