defmodule ReTitherWeb.IntegrationCase do
  @moduledoc """
    integration case module
  """
  use ExUnit.CaseTemplate

  using do
    quote do
      use ReTitherWeb.ConnCase
      use PhoenixIntegration
    end
  end
end
