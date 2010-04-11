class UnidMedidasController < ApplicationController
  # GET /unid_medidas
  # GET /unid_medidas.xml
  def index
    @unid_medidas = UnidMedida.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unid_medidas }
    end
  end

  # GET /unid_medidas/1
  # GET /unid_medidas/1.xml
  def show
    @unid_medida = UnidMedida.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unid_medida }
    end
  end

  # GET /unid_medidas/new
  # GET /unid_medidas/new.xml
  def new
    @unid_medida = UnidMedida.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unid_medida }
    end
  end

  # GET /unid_medidas/1/edit
  def edit
    @unid_medida = UnidMedida.find(params[:id])
  end

  # POST /unid_medidas
  # POST /unid_medidas.xml
  def create
    @unid_medida = UnidMedida.new(params[:unid_medida])

    respond_to do |format|
      if @unid_medida.save
        flash[:notice] = 'UnidMedida was successfully created.'
        format.html { redirect_to(@unid_medida) }
        format.xml  { render :xml => @unid_medida, :status => :created, :location => @unid_medida }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unid_medida.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unid_medidas/1
  # PUT /unid_medidas/1.xml
  def update
    @unid_medida = UnidMedida.find(params[:id])

    respond_to do |format|
      if @unid_medida.update_attributes(params[:unid_medida])
        flash[:notice] = 'UnidMedida was successfully updated.'
        format.html { redirect_to(@unid_medida) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unid_medida.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unid_medidas/1
  # DELETE /unid_medidas/1.xml
  def destroy
    @unid_medida = UnidMedida.find(params[:id])
    @unid_medida.destroy

    respond_to do |format|
      format.html { redirect_to(unid_medidas_url) }
      format.xml  { head :ok }
    end
  end
end
