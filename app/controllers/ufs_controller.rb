class UfsController < ApplicationController

  def searchuf
    fecha_uf = Date.parse(params[:date])
    @uf = Uf.find_by(date_Uf: fecha_uf)
    valor_uf = @uf.value_Uf

    respuesta = {
                  fecha_solicitada: fecha_uf,
                  valor: valor_uf
    }

    respond_to do |format|
      format.json { render json: respuesta }
      format.html.none  { render "trash" }
    end

    Customer.create(customer_name: params[:client], request_date: Time.now, request: request.fullpath)

  end
end