class ThreesixtyTextqsController < ApplicationController
  # GET /threesixty_textqs
  # GET /threesixty_textqs.xml
  def index
    @threesixty_textqs = ThreesixtyTextq.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @threesixty_textqs }
    end
  end

  # GET /threesixty_textqs/1
  # GET /threesixty_textqs/1.xml
  def show
    @threesixty_textq = ThreesixtyTextq.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @threesixty_textq }
    end
  end

  # GET /threesixty_textqs/new
  # GET /threesixty_textqs/new.xml
  def new
    @threesixty_textq = ThreesixtyTextq.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @threesixty_textq }
    end
  end

  # GET /threesixty_textqs/1/edit
  def edit
    @threesixty_textq = ThreesixtyTextq.find(params[:id])
  end

  # POST /threesixty_textqs
  # POST /threesixty_textqs.xml
  def create
    @threesixty_textq = ThreesixtyTextq.new(params[:threesixty_textq])

    respond_to do |format|
      if @threesixty_textq.save
        flash[:notice] = 'ThreesixtyTextq was successfully created.'
        format.html { redirect_to(@threesixty_textq) }
        format.xml  { render :xml => @threesixty_textq, :status => :created, :location => @threesixty_textq }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @threesixty_textq.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /threesixty_textqs/1
  # PUT /threesixty_textqs/1.xml
  def update
    @threesixty_textq = ThreesixtyTextq.find(params[:id])

    respond_to do |format|
      if @threesixty_textq.update_attributes(params[:threesixty_textq])
        flash[:notice] = 'ThreesixtyTextq was successfully updated.'
        format.html { redirect_to(@threesixty_textq) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @threesixty_textq.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /threesixty_textqs/1
  # DELETE /threesixty_textqs/1.xml
  def destroy
    @threesixty_textq = ThreesixtyTextq.find(params[:id])
    @threesixty_textq.destroy

    respond_to do |format|
      format.html { redirect_to(threesixty_textqs_url) }
      format.xml  { head :ok }
    end
  end
end
