class VendedorsController < ApplicationController
  # GET /vendedors
  # GET /vendedors.xml
  def index
    @vendedors = Vendedor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @vendedors }
    end
  end

  # GET /vendedors/1
  # GET /vendedors/1.xml
  def show
    @vendedor = Vendedor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @vendedor }
    end
  end

  # GET /vendedors/new
  # GET /vendedors/new.xml
  def new
    @vendedor = Vendedor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @vendedor }
    end
  end

  # GET /vendedors/1/edit
  def edit
    @vendedor = Vendedor.find(params[:id])
  end

  # POST /vendedors
  # POST /vendedors.xml
  def create
    @vendedor = Vendedor.new(params[:vendedor])

    respond_to do |format|
      if @vendedor.save
        flash[:notice] = 'Vendedor was successfully created.'
        format.html { redirect_to(@vendedor) }
        format.xml  { render :xml => @vendedor, :status => :created, :location => @vendedor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vendedor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /vendedors/1
  # PUT /vendedors/1.xml
  def update
    @vendedor = Vendedor.find(params[:id])

    respond_to do |format|
      if @vendedor.update_attributes(params[:vendedor])
        flash[:notice] = 'Vendedor was successfully updated.'
        format.html { redirect_to(@vendedor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @vendedor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /vendedors/1
  # DELETE /vendedors/1.xml
  def destroy
    @vendedor = Vendedor.find(params[:id])
    @vendedor.destroy

    respond_to do |format|
      format.html { redirect_to(vendedors_url) }
      format.xml  { head :ok }
    end
  end
end
