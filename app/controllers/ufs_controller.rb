class UfsController < ApplicationController

  def searchuf
    fecha_uf = Date.parse(params[:date])
    @uf = Uf.find_by(date_Uf: fecha_uf)
    valor_uf = @uf.value_Uf

    respuesta = {
                  fecha_solicitada: fecha_uf,
                  valor: valor_uf
    }
    byebug
    render json: respuesta
  end

  # Search.create(name: params[:cliente], date: Time.now)

end