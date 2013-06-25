class ProdsController < ApplicationController
  # GET /prods
  # GET /prods.json
  def index
    @prods = Prod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @prods }
    end
  end

  # GET /prods/1
  # GET /prods/1.json
  def show
    @prod = Prod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @prod }
    end
  end

  # GET /prods/new
  # GET /prods/new.json
  def new
    @prod = Prod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @prod }
    end
  end

  # GET /prods/1/edit
  def edit
    @prod = Prod.find(params[:id])
  end

  # POST /prods
  # POST /prods.json
  def create
    @prod = Prod.new(params[:prod])

    respond_to do |format|
      if @prod.save
        format.html { redirect_to @prod, :notice => 'Prod was successfully created.' }
        format.json { render :json => @prod, :status => :created, :location => @prod }
      else
        format.html { render :action => "new" }
        format.json { render :json => @prod.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prods/1
  # PUT /prods/1.json
  def update
    @prod = Prod.find(params[:id])

    respond_to do |format|
      if @prod.update_attributes(params[:prod])
        format.html { redirect_to @prod, :notice => 'Prod was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @prod.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prods/1
  # DELETE /prods/1.json
  def destroy
    @prod = Prod.find(params[:id])
    @prod.destroy

    respond_to do |format|
      format.html { redirect_to prods_url }
      format.json { head :no_content }
    end
  end
end
