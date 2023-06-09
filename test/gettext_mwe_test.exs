defmodule GettextMweTest do
  use ExUnit.Case
  doctest GettextMwe

  test "greets the world" do
    assert GettextMwe.hello() == :world
  end
end
