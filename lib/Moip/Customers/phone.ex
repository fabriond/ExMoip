defmodule ExMoip.Customers.Phone do
  
  @enforce_keys [:countryCode, :areaCode, :number]

  defstruct [countryCode: nil, areaCode: nil, number: nil]

  @type t :: %__MODULE__{
    countryCode: String.t, 
    areaCode: String.t, 
    number: String.t
  }
end