defmodule ExMoip.FundingInstruments.CreditCard do

  alias ExMoip.FundingInstruments.Holder

  @enforce_keys [:expirationMonth, :expirationYear, :number, :cvc]

  defstruct [expirationMonth: nil, expirationYear: nil, number: nil, cvc: nil, holder: nil]

  @type t :: %__MODULE__{
    #verificar como fazer hash do cartão
    expirationMonth: String.t, 
    expirationYear: String.t, 
    number: String.t, 
    cvc: String.t, 
    holder: Holder.t
  }
end

#criar classe holder
#holder:{  
#      fullname:Maria Oliveira,
#      birthdate:1980-05-10,
#      taxDocument:{  
#         type:CPF,
#         number:10013390023
#      },
#      billingAddress:{  
#         city:Rio de Janeiro,
#         district:Copacabana,
#         street:Rua Raimundo Corrêa,
#         streetNumber:1200,
#         zipCode:05246200,
#         state:RJ,
#         country:BRA
#      },
#      phone:{  
#         countryCode:55,
#         areaCode:11,
#         number:22226842
#      }
#   }