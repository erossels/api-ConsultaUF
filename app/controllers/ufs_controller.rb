class UfsController < ApplicationController
  respond_to? :json

  def searchuf
    fecha_uf = Date.parse(params[:date])
    @uf = Uf.find_by(date_Uf: fecha_uf)
    valor_uf = @uf.value_Uf

    respuesta = {
                  fecha_solicitada: fecha_uf,
                  valor: valor_uf
    }
    render json: respuesta

    Customer.create(customer_name: params[:cliente], request_date: Time.now, request: request.fullpath)

  end
end