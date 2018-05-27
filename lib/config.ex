defmodule Config do
    @sandbox_url "https://sandbox.moip.com.br/v2/"
    @production_url "https://api.moip.com.br/v2"


    def assinaturas_url do
      case Application.get_env(:ex_moip, :env) do
        :sandbox -> @sandbox_url
        _ -> @production_url
      end
    end


    def token do
      Application.get_env(:ex_moip, :token)
    end

    def api_key do
      Application.get_env(:ex_moip, :api_key)
    end

    def authorization do
      Base.encode64("#{token}:#{api_key}")
  end
end