class DataController < ApplicationController
  before_action :set_datum, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  def index
    @data = Datum.all
  end

  def show
  end

  def new
    @datum = Datum.new
  end

  def edit
  end

  def create
    @datum = Datum.new(datum_params)
    respond_to do |format|
      if @datum.save
        format.html { redirect_to @datum, notice: 'Datum was successfully created.' }
        format.json { render :show, status: :created, location: @datum }
      else
        format.html { render :new }
        format.json { render json: @datum.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @datum.update(datum_params)
        format.html { redirect_to @datum, notice: 'Datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @datum }
      else
        format.html { render :edit }
        format.json { render json: @datum.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @datum.destroy
    respond_to do |format|
      format.html { redirect_to data_url, notice: 'Datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_datum
      @datum = Datum.find(params[:id])
    end

    def datum_params
      params.require(:datum).permit(:turno, :numero_oficio,
        :fecha_oficio, :fecha_recepcion,
        :nombre_promovente, :numero_juicio,
        :turnado, :numero_correspondencia,
        :numero_pension, :tipo_expediente,
        :numero_expediente, :observaciones,
        :letra, :termino, :envio_juridico,
        :monto_cheque, :ajuste_cuota, :sala, :documento)
    end
end
