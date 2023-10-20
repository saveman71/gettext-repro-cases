# GettextMwe

How to reproduce:

In `gettext_mwe.ex`, add a second `gettext` call to the `gettext` function:

```elixir
  gettext("First string")
  gettext("Second string")
```

Run `mix gettext.extract --merge` and observe that both `po` and `pot` files are updated.

Run `git checkout -- priv/gettext/fr/LC_MESSAGES/default.po` to "accidentally" reset the `po` file.

Run `mix gettext.extract --merge` and observe that nothing is updated.

From that point on, if you commit and push, gettext won't catch the new strings until the code is modified.
