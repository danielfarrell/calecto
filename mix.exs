defmodule Calecto.Mixfile do
  use Mix.Project

  def project do
    [app: :calecto,
     version: "0.3.9",
     elixir: "~> 1.0",
     package: package,
     description: description,
     deps: deps]
  end

  def application do
    [applications: [:logger, :calendar]]
  end

  defp deps do
    [
      {:ecto, "~> 0.15 or ~> 1.0"},
      {:calendar, "~> 0.8.1 or ~> 0.9.0 or ~> 0.10.0"},

      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.8", only: :dev},
    ]
  end

  defp package do
    %{
       contributors: ["Lau Taarnskov"],
       links: %{ "GitHub" => "https://github.com/lau/calecto"},
       files: ~w(lib priv mix.exs README* LICENSE*
                    license* CHANGELOG* changelog* src) }
  end

  defp description do
    """
    Library for using Calendar with Ecto.
    This lets you save Calendar types in Ecto and work
    with date-times in multiple timezones.
    """
  end
end
