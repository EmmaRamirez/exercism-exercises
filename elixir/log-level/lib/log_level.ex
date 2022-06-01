defmodule LogLevel do
  def to_label(level, legacy?) do
    isLegacy = legacy? == true && (level == 0 || level == 5)

    cond do
      isLegacy ->
        :unknown
      true -> cond do
        level == 0 -> :trace
        level == 1 -> :debug
        level == 2 -> :info
        level == 3 -> :warning
        level == 4 -> :error
        level == 5 -> :fatal
        true -> :unknown
      end
    end


  end

  def alert_recipient(level, legacy?) do
    label = to_label(level, legacy?)
    IO.puts(label)
    IO.puts(label == :debug)
    cond do
      label == :fatal || label == :error -> :ops
      label == :unknown && legacy? -> :dev1
      label == :unknown -> :dev2
      true -> false
    end
  end
end
