defmodule ExMoip.Customers.TaxDocument do
  
  @enforce_keys [:type, :number]

  defstruct [type: nil, number: nil]

  @type t :: %__MODULE__{
    type: String.t,
    number: String.t
  }
end