defmodule ExMoip.Customer do

  alias ExMoip.Customers.{Phone, TaxDocument, Address}
  alias ExMoip.FundingInstrument

  @enforce_keys [:ownId, :fullname, :email, :birthDate, 
                :taxDocument, :phone]
                
  defstruct [ownId: nil, fullname: nil, email: nil, birthDate: nil, 
            taxDocument: nil, phone: nil, shippingAddress: nil, 
            fundingInstrument: nil]

  @type t :: %__MODULE__{
    ownId: String.t,
    fullname: String.t, 
    email: String.t, 
    birthDate: String.t, # "YYYY-MM-DD"
    taxDocument: TaxDocument.t, 
    phone: Phone.t, 
    shippingAddress: Address.t, 
    fundingInstrument: FundingInstrument.t
  }
end