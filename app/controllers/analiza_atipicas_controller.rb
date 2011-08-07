class AnalizaAtipicasController < ApplicationController
  def index
    @analize = @apartinator.analiza_atipicas
  end
  def show
    @analiza = @apartinator.analiza_atipica(params[:id])
  end

  def new
    #@analiza = AnalizaAtipica.new
    @analiza = @apartinator.analiza_atipicas.new
    respond do |format|
      format.html
    end
  end
  def create
    @analiza = @apartinator.analiza_atipicas.build(params[:analiza_atipica])
    if @analiza.save
      flash[:notice] = "Am adaugat analiza"
    else
      render :action => 'new'
    end
  end
  def edit
    @analiza = AnalizaAtipica.find(params[:id])
  end
  
  def update
    @analiza = AnalizaAtipica.find(params[:id])
    if @analiza.update_attributes(params[:analiza])
      flash[:notice] = "Ai schimbat analiza cu success"
    else
      render :action => 'edit'
    end
  end
  def destroy
    @analiza = AnalizaAtipica.find(params[:id])
    @analiza.destroy
    flash[:notice] = "Ai sters analiza"
  end

  private
  def find_parent
    params.each do |name, value|
      if name =~ /(.+)_id$/
        @apartinator = $1.classify.constantiza.find(value)
        return @apartinator
      end
    end
    nil
end
