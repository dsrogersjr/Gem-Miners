class ThreesixtytextqsController < ApplicationController
  before_filter :sideposts_updates
  
  # GET /threesixtytextqs
  # GET /threesixtytextqs.xml
  def index
    @threesixtytextqs = Threesixtytextq.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @threesixtytextqs }
    end
  end

  # GET /threesixtytextqs/1
  # GET /threesixtytextqs/1.xml
  def show
    @threesixtytextq = Threesixtytextq.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @threesixtytextq }
    end
  end

  # GET /threesixtytextqs/new
  # GET /threesixtytextqs/new.xml
  def new
    @threesixtytextq = Threesixtytextq.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @threesixtytextq }
    end
  end

  # GET /threesixtytextqs/1/edit
  def edit
    @threesixtytextq = Threesixtytextq.find(params[:id])
  end

  # POST /threesixtytextqs
  # POST /threesixtytextqs.xml
  def create
    @threesixty = Threesixty.find(params[:threesixty_id])
    @threesixtytextq = @threesixty.threesixtytextqs.create!(params[:threesixtytextq])
    redirect_to @threesixty
  end

  # PUT /threesixtytextqs/1
  # PUT /threesixtytextqs/1.xml
  def update
    @threesixtytextq = Threesixtytextq.find(params[:id])
    @threesixty = Threesixty.find(@threesixtytextq.threesixty_id);

    respond_to do |format|
      if @threesixtytextq.update_attributes(params[:threesixtytextq])
        flash[:notice] = 'Threesixtytextq was successfully updated.'
        format.html { redirect_to(@threesixty) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @threesixtytextq.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /threesixtytextqs/1
  # DELETE /threesixtytextqs/1.xml
  def destroy
    @threesixtytextq = Threesixtytextq.find(params[:id])
    @threesixty = Threesixty.find(@threesixtytextq.threesixty_id)
    @threesixtytextq.destroy

    respond_to do |format|
      format.html { redirect_to(@threesixty) }
      format.xml  { head :ok }
    end
  end
end
