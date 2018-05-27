defmodule ExMoip.Customers.Address do

  @enforce_keys [:city, :district, :street, :streetNumber, 
                :zipCode, :state, :country]

  defstruct [city: nil, district: nil, street: nil, complement: nil, 
            streetNumber: nil, zipCode: nil, state: nil, country: nil]

  @type t :: %__MODULE__{
    city: String.t, 
    district: String.t, 
    street: String.t,
    complement: String.t,
    streetNumber: String.t, 
    zipCode: String.t, 
    state: String.t, 
    country: String.t
  }
end