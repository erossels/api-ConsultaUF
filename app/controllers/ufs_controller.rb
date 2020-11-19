class UfsController < ApplicationController
  before_action :valid_date?
  def response
    fecha_uf = Date.parse(params[:date_uf])
    @uf = Uf.find_by(date_uf: fecha_uf)

    @respuesta = {
      Fecha: fecha_uf,
      Valor: @uf.value_uf
    }

    render json: @respuesta
  end

  private
  def valid_date?
  end

end