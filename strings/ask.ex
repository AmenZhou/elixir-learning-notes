defmodule Ask do
  def line() do
    planet = select_planet
    distance = select_distance
    distance = elem(Integer.parse(distance), 0)
    Drop.fall_velocity(planet, distance)
  end

  def select_distance do
    answer = IO.gets("How far? (meters) >")
    answer = String.strip(answer)
    IO.puts("#{answer} meters")
    answer
  end

  def select_planet do
    question = """
      Which planet are you on?
      1. Earth
      2. Earth's Moon
      3. Mars
    """
    IO.puts(question)
    answer = IO.gets("Which one? >")
    answer = String.first(answer)

    planet = char_to_planet(answer)
    IO.puts(planet)
    planet
  end

  def char_to_planet(char) do
    case char do
      "1" -> :earth
      "2" -> :moon
      "3" -> :mars
    end
  end
end

defmodule Drop do
#pattern-match
  def fall_velocity(:earth, distance) do
    :math.sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(:moon, distance) do
    :math.sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(:mars, distance) do
    :math.sqrt(2 * 3.71 * distance)
  end
end