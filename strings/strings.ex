defmodule Strings do
  #regular string
  def regular_str do
    IO.puts("Double quote string")
    IO.puts('Single quote string')
  end

  #multiline string
  def multiline_str do
    IO.puts("""
    This is a multiline string,
    also called a heredoc.
    """)
  end

  #interpolate
  def interpolate do
    cat = "I am cute"
    dog = "I am loyalty"
    IO.puts("My cat says #{cat}, my dog says #{dog}!")
  end

  #concate strings
  def concate do
    first = "This is the first half of string,"
    second = "This is the second half of string!"
    #IO.puts(first ++ second)
    IO.puts(first <> second)
  end
end
