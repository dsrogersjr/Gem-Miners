class ThreesixtyqsController < ApplicationController
  before_filter :sideposts_updates
  
  # GET /threesixtyqs
  # GET /threesixtyqs.xml
  def index
    @threesixtyqs = Threesixtyq.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @threesixtyqs }
    end
  end

  # GET /threesixtyqs/1
  # GET /threesixtyqs/1.xml
  def show
    @threesixtyq = Threesixtyq.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @threesixtyq }
    end
  end

  # GET /threesixtyqs/new
  # GET /threesixtyqs/new.xml
  def new
    @threesixtyq = Threesixtyq.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @threesixtyq }
    end
  end

  # GET /threesixtyqs/1/edit
  def edit
    @threesixtyq = Threesixtyq.find(params[:id])
  end

  # POST /threesixtyqs
  # POST /threesixtyqs.xml
  def create
    @threesixty = Threesixty.find(params[:threesixty_id])
    @threesixtyq = @threesixty.threesixtyqs.create!(params[:threesixtyq])
    redirect_to @threesixty
  end

  # PUT /threesixtyqs/1
  # PUT /threesixtyqs/1.xml
  def update
    @threesixtyq = Threesixtyq.find(params[:id])
    @threesixty = Threesixty.find(@threesixtyq.threesixty_id);

    respond_to do |format|
      if @threesixtyq.update_attributes(params[:threesixtyq])
        flash[:notice] = 'Threesixtyq was successfully updated.'
        format.html { redirect_to(@threesixty) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @threesixtyq.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /threesixtyqs/1
  # DELETE /threesixtyqs/1.xml
  def destroy
    @threesixtyq = Threesixtyq.find(params[:id])
    @threesixty = Threesixty.find(@threesixtyq.threesixty_id)
    @threesixtyq.destroy

    respond_to do |format|
      format.html { redirect_to(@threesixty) }
      format.xml  { head :ok }
    end
  end
end
