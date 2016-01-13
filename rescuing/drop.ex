defmodule Drop do
  def fall_velocity(planemo, distance) do
    try do
      gravity = case planemo do
        :earth -> 9.8
        :moon -> 1.6
        :mars -> 3.71
      end
      :math.sqrt(2 * gravity * distance)
    rescue
      ArithmeticError -> {:error, "Distance must be non-negative"}
      CaseClauseError -> {:error, "Unknown planemo #{planemo}"}
    end
  end
end

Drop.fall_velocity(:earth, -20)
#=>{:error,"Distance must be non-negative"}
Drop.fall_velocity(:jupiter, 20)
#=>{:error,"Unknown planemo jupiter"}

#iex(1)> counter = 255
#255
#iex(2)> :error_logger.info_msg("Count has reached #{counter}\n")
#=INFO REPORT==== 18-Apr-2013::19:17:58 ===
#Count has reached 255
#:ok
#iex(3)> :error_logger.warning_msg("Connection lost; will retry.\n")
#=ERROR REPORT==== 18-Apr-2013::19:18:02 ===
#Connection lost; will retry.
#:ok
#iex(4)> :error_logger.error_msg("Unable to read database\n")
#=ERROR REPORT==== 18-Apr-2013::19:18:07 ===
#Unable to read database
#:ok
