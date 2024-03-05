defmodule EmojiFilter do
  alias EmojiFilter.Rules

  @doc """
  Sanitize original string, remove emoji symbol.

  ## Examples

      iex> "👦👦🏻🇯🇵😇😈normal strings" |> EmojiFilter.remove_emoji()
      "normal strings"

      iex> "👦👦🏻🇯🇵😇😈normal strings" |> EmojiFilter.remove_non_emoji()
      "👦👦🏻🇯🇵😇😈"
      ""

  """
  def remove_emoji(original_string) do
    Rules.emoji_codepoints() |> Regex.replace(original_string, "")
  end

  def remove_non_emoji(original_string) do
    Rules.non_emoji_codepoints() |> Regex.replace(original_string, "")
  end
end
