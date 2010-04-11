class TransportistasController < ApplicationController
  # GET /transportistas
  # GET /transportistas.xml
  def index
    @transportistas = Transportista.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @transportistas }
    end
  end

  # GET /transportistas/1
  # GET /transportistas/1.xml
  def show
    @transportista = Transportista.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @transportista }
    end
  end

  # GET /transportistas/new
  # GET /transportistas/new.xml
  def new
    @transportista = Transportista.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @transportista }
    end
  end

  # GET /transportistas/1/edit
  def edit
    @transportista = Transportista.find(params[:id])
  end

  # POST /transportistas
  # POST /transportistas.xml
  def create
    @transportista = Transportista.new(params[:transportista])

    respond_to do |format|
      if @transportista.save
        flash[:notice] = 'Transportista was successfully created.'
        format.html { redirect_to(@transportista) }
        format.xml  { render :xml => @transportista, :status => :created, :location => @transportista }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @transportista.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /transportistas/1
  # PUT /transportistas/1.xml
  def update
    @transportista = Transportista.find(params[:id])

    respond_to do |format|
      if @transportista.update_attributes(params[:transportista])
        flash[:notice] = 'Transportista was successfully updated.'
        format.html { redirect_to(@transportista) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @transportista.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /transportistas/1
  # DELETE /transportistas/1.xml
  def destroy
    @transportista = Transportista.find(params[:id])
    @transportista.destroy

    respond_to do |format|
      format.html { redirect_to(transportistas_url) }
      format.xml  { head :ok }
    end
  end
end
