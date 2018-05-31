defmodule ExMoip.Orders.Item do
  
  @enforce_keys [:product, :quantity, :detail, :price]

  defstruct [product: nil, quantity: nil, detail: nil, price: nil]

  @type t :: %__MODULE__{
    product: String.t, 
    quantity: String.t,
    detail: String.t, 
    price: String.t #definir device
  }
  
end