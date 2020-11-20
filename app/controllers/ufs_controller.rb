class UfsController < ApplicationController
  before_action :valid_date?

  def response
    fecha_uf = Date.parse(params[:date])
    @uf = Uf.find_by(date_Uf: fecha_uf)
    @respuesta =  {
                    fecha_solicitada: @uf.date_Uf,
                    valor: @uf.value_Uf
                  }
    byebug
    respond_to do |format|
      format.json { render json: @respuesta }
    end
    byebug
    Customer.create(params[:client, :date])

    # JSON.pretty_generate(respuesta)
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