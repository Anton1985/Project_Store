class TipoArticulosController < ApplicationController
  # GET /tipo_articulos
  # GET /tipo_articulos.xml
  def index
    @tipo_articulos = TipoArticulo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_articulos }
    end
  end

  # GET /tipo_articulos/1
  # GET /tipo_articulos/1.xml
  def show
    @tipo_articulo = TipoArticulo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_articulo }
    end
  end

  # GET /tipo_articulos/new
  # GET /tipo_articulos/new.xml
  def new
    @tipo_articulo = TipoArticulo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_articulo }
    end
  end

  # GET /tipo_articulos/1/edit
  def edit
    @tipo_articulo = TipoArticulo.find(params[:id])
  end

  # POST /tipo_articulos
  # POST /tipo_articulos.xml
  def create
    @tipo_articulo = TipoArticulo.new(params[:tipo_articulo])

    respond_to do |format|
      if @tipo_articulo.save
        flash[:notice] = 'TipoArticulo was successfully created.'
        format.html { redirect_to(@tipo_articulo) }
        format.xml  { render :xml => @tipo_articulo, :status => :created, :location => @tipo_articulo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_articulo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_articulos/1
  # PUT /tipo_articulos/1.xml
  def update
    @tipo_articulo = TipoArticulo.find(params[:id])

    respond_to do |format|
      if @tipo_articulo.update_attributes(params[:tipo_articulo])
        flash[:notice] = 'TipoArticulo was successfully updated.'
        format.html { redirect_to(@tipo_articulo) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_articulo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_articulos/1
  # DELETE /tipo_articulos/1.xml
  def destroy
    @tipo_articulo = TipoArticulo.find(params[:id])
    @tipo_articulo.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_articulos_url) }
      format.xml  { head :ok }
    end
  end
end
