defmodule ExMoip.Order do

  alias ExMoip.{Customer, Order}
  alias ExMoip.Orders.Item

  @enforce_keys [:ownId, :items, :customer]
                
  defstruct [ownId: nil, items: nil, customer: nil]

  @type t :: %__MODULE__{
    ownId: String.t,
    items: [Item.t],
    customer: Customer.t
  }
      
  def create(%Order{} = order) do
    order = Poison.encode!(order)
    
    #Test (the Authorization here is the one given in the moip site for testing purposes)
    response = elem(HTTPoison.post("https://sandbox.moip.com.br/v2/orders", order, [{"Content-Type", "application/json"}, {"Authorization", "Basic MDEwMTAxMDEwMTAxMDEwMTAxMDEwMTAxMDEwMTAxMDE6QUJBQkFCQUJBQkFCQUJBQkFCQUJBQkFCQUJBQkFCQUJBQkFCQUJBQg=="}]), 1)

    #Live
    #response = elem(HTTPoison.post!(Config.get_url, order, [{"Content-Type", "application/json"}, {"Authorization", "Basic #{Config.authorization}"}]), 1)
    
    check_status_code(response.status_code, response.body)
  end

  def check_status_code(status_code, body) do
    case status_code do
      
      #TODO: add body decoding
      status when status in 200..299 -> {:ok, body}
      
      #TODO: add error decoding
      _ -> {:error, body}
    end
  end
end