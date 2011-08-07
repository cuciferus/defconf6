class HemoLunarsController < ApplicationController
  # GET /hemo_lunars
  # GET /hemo_lunars.json
  before_filter :find_pacient, :except => [:show]
  def index
    @hemo_lunars = @pacient.hemo_lunars.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hemo_lunars }
    end
  end

  # GET /hemo_lunars/1
  # GET /hemo_lunars/1.json
  def show
    @hemo_lunar = HemoLunar.find(params[:id]) #asta ramane asa?
    @pacient = Pacient.find(params[:pacient_id])


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hemo_lunar }
      format.pdf do 
        send_data Evaluare.new.to_pdf(@hemo_lunar, @pacient), :filename => "salut.pdf",
                                          :type => "application/pdf", :page_size => "A4", :layout => :portrait
      end
   end
  end

  # GET /hemo_lunars/new
  # GET /hemo_lunars/new.json
  def new
    @hemo_lunar = @pacient.hemo_lunars.new #aici de lucru
    @analiza = @hemo_lunar.analiza_atipicas.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hemo_lunar }
    end
  end

  # GET /hemo_lunars/1/edit
  def edit
    @hemo_lunar = @pacient.hemo_lunars.find(params[:id])
  end

  # POST /hemo_lunars
  # POST /hemo_lunars.json
  def create
    @hemo_lunar = @pacient.hemo_lunars.create(params[:hemo_lunar])

    logger.debug "Am facut un hemo nou cu parametrii #{params[:hemo_lunar]}"
    puts  "iar analiza atipica e #{params[:analiza_atipica]}"
    respond_to do |format|
      if @hemo_lunar.save
        format.html { redirect_to @pacient, notice: 'Hemo lunar was successfully created.' }
        format.json { render json: @hemo_lunar, status: :created, location: @hemo_lunar }
      else
        format.html { render action: "new" }
        format.json { render json: @hemo_lunar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hemo_lunars/1
  # PUT /hemo_lunars/1.json
  def update
    @hemo_lunar = HemoLunar.find(params[:id]) #poate ramane asa?

    respond_to do |format|
      if @hemo_lunar.update_attributes(params[:hemo_lunar])
        format.html { redirect_to @hemo_lunar, notice: 'Hemo lunar was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @hemo_lunar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hemo_lunars/1
  # DELETE /hemo_lunars/1.json
  def destroy
    @hemo_lunar = @pacient.hemo_lunars.find(params[:id])
    @hemo_lunar.destroy

    respond_to do |format|
      format.html { redirect_to hemo_lunars_url }
      format.json { head :ok }
    end
  end
  private
  def find_pacient
    @pacient = Pacient.find(params[:pacient_id])
  end
end
