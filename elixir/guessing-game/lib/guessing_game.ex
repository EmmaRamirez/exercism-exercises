defmodule GuessingGame do
  def compare(secret_number, guess \\ :no_guess)

  def compare(secret_number, guess) when secret_number == guess do "Correct" end

  def compare(secret_number, guess) when secret_number == guess + 1 or secret_number == guess - 1 do "So close" end

  def compare(_secret_number, guess) when guess == :no_guess do "Make a guess" end

  def compare(secret_number, guess) when guess > secret_number do "Too high" end

  def compare(secret_number, guess) when guess < secret_number do "Too low" end

end
