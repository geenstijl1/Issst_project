class SearchController < ApplicationController

  def create
    word = params[:keyword]
    @datum = Datum.where(numero_oficio: word).or Datum.where(turnado: word).or Datum.where(nombre_promovente: word).or Datum.where(numero_pension: word)
    respond_to do |format|
      format.json {render json: @datum}
      format.js
    end
  end

end
