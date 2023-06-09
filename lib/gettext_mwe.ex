defmodule GettextMwe do
  import GettextMwe.Gettext

  @moduledoc false

  def singular do
    gettext("Singular.")
  end

  def plural(count) do
    ngettext("Singular.", "Plural.", count)
  end
end
