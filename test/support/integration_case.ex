defmodule ReTitherWeb.IntegrationCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use ReTitherWeb.ConnCase
      use PhoenixIntegration
    end
  end

end
