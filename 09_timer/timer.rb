class Timer
    attr_accessor :seconds, :time_string

    def initialize
        @seconds = 0
    end

    def time_string
        if @seconds == 0
            @time_string = "00:00:00"
        else
            @hours = @seconds / 3600
            @minutes = (@seconds - (3600 * @hours)) / 60
            @seconds_leftover = @seconds - (3600 * @hours) - (60 * @minutes)
            if @hours < 10
                @hours_string = 0.to_s + @hours.to_s
            else
                @hours_string = @hours.to_s
            end
            if @minutes < 10
                @minutes_string = 0.to_s + @minutes.to_s
            else
                @minutes_string = @minutes.to_s
            end
            if @seconds_leftover < 10
                @seconds_leftover_string = 0.to_s + @seconds_leftover.to_s
            else
                @seconds_leftover_string = @seconds_leftover.to_s
            end
            @time_string = @hours_string + ":" + @minutes_string + ":" + @seconds_leftover_string
        end
    end


end