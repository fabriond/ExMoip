defmodule ExMoip.FundingInstrument do

  alias ExMoip.CreditCard

  @enforce_keys [:method]

  defstruct [method: nil, creditCard: nil, boleto: nil]

  @type t :: %__MODULE__{
    method: String.t,
    creditCard: CreditCard.t,
    boleto: Boleto.t
  }
end