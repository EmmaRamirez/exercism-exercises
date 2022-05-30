defmodule Secrets do
  def secret_add(secret) do
    fn n -> secret + n end
  end

  def secret_subtract(secret) do
    fn n -> n - secret end
  end

  def secret_multiply(secret) do
    fn n -> n * secret end
  end

  def secret_divide(secret) do
    fn n -> div(n, secret) end
  end

  def secret_and(secret) do
    use Bitwise
    fn n -> n &&& secret end
  end

  def secret_xor(secret) do
    use Bitwise
    fn n -> bxor(n, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn n -> secret_function2.(secret_function1.(n)) end
  end
end
