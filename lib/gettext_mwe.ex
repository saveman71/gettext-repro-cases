defmodule GettextMwe do
  import GettextMwe.Gettext

  @moduledoc false

  gettext("Test before commit")

  IO.puts("compiled")
end
