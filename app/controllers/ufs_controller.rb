class UfsController < ApplicationController
  before_action :valid_date?

  def response
    require 'json'
    fecha_uf = Date.parse(params[:date])
    @uf = Uf.find_by(date_Uf: fecha_uf)
    
    respuesta = {
      fecha_solicitada: @uf.date_Uf, 
      valor: @uf.value_Uf
    }

    byebug
    JSON.pretty_generate(respuesta)

   #format.json { render json: respuesta}
    
    #render :json => { 
    #                  :success => true,
    #                  :respuesta => @uf.as_json
    #                }
   
  end

  private
  def valid_date?
  end

end