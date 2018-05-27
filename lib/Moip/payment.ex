defmodule ExMoip.Payment do

  alias ExMoip.FundingInstrument
  
  @enforce_keys [:fundingInstrument]

  defstruct [installmentCount: nil, statementDescriptor: nil, fundingInstrument: nil, device: nil]

  @type t :: %__MODULE__{
    installmentCount: String.t, 
    statementDescriptor: String.t, 
    fundingInstrument: FundingInstrument.t, 
    device: Device.t #definir device
  }
  
end


#{
#  installmentCount: 1,
#  statementDescriptor: minhaLoja.com,
#  fundingInstrument: {
#    method: CREDIT_CARD,
#    creditCard: {
#      hash: HhL0kbhfid+jwgj5l6Kt9EPdetDxQN8s7uKUHDYxDC/XoULjzik44rSda3EcWuOcL17Eb8JjWc1JI7gsuwg9P0rJv1mJQx+d3Dv1puQYz1iRjEWWhnB1bw0gTvnnC/05KbWN5M8oTiugmhVK02Rt2gpbcTtpS7VWyacfgesBJFavYYMljYg8p2YGHXkXrMuQiOCeemKLk420d0OTMBba27jDVVJ663HZDrObnjFXJH/4B5irkj+HO5genV+V4PYoLcOESG4nrI3oFAsMGsLLcdJo0NNvkEmJpn0e9GzureKKFYisYU+BEd9EMr/odS0VMvOYRV65HbPTspIkjl2+3Q==,
#      store: true,
#      holder: {
#        fullname: Jose Portador da Silva,
#        birthdate: 1988-12-30,
#        taxDocument: {
#          type: CPF,
#          number: 33333333333
#        },
#        phone: {
#          countryCode: 55,
#          areaCode: 11,
#          number: 66778899
#        }
#      }
#    }
#  },
#  device: {
#    ip: 127.0.0.1,
#    geolocation: {
#      latitude: -33.867,
#      longitude: 151.206
#    },
#    userAgent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.81 Safari/537.36,
#    fingerprint: QAZXswedCVGrtgBNHyujMKIkolpQAZXswedCVGrtgBNHyujMKIkolpQAZXswedCVGrtgBNHyujMKIkolpQAZXswedCVGrtgBNHyujMKIkolp
#  }
#}