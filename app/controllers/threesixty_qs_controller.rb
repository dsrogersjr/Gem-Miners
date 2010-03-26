class ThreesixtyQsController < ApplicationController
  # GET /threesixty_qs
  # GET /threesixty_qs.xml
  def index
    @threesixty_qs = ThreesixtyQ.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @threesixty_qs }
    end
  end

  # GET /threesixty_qs/1
  # GET /threesixty_qs/1.xml
  def show
    @threesixty_q = ThreesixtyQ.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @threesixty_q }
    end
  end

  # GET /threesixty_qs/new
  # GET /threesixty_qs/new.xml
  def new
    @threesixty_q = ThreesixtyQ.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @threesixty_q }
    end
  end

  # GET /threesixty_qs/1/edit
  def edit
    @threesixty_q = ThreesixtyQ.find(params[:id])
  end

  # POST /threesixty_qs
  # POST /threesixty_qs.xml
  def create
    @threesixty_q = ThreesixtyQ.new(params[:threesixty_q])

    respond_to do |format|
      if @threesixty_q.save
        flash[:notice] = 'ThreesixtyQ was successfully created.'
        format.html { redirect_to(@threesixty_q) }
        format.xml  { render :xml => @threesixty_q, :status => :created, :location => @threesixty_q }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @threesixty_q.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /threesixty_qs/1
  # PUT /threesixty_qs/1.xml
  def update
    @threesixty_q = ThreesixtyQ.find(params[:id])

    respond_to do |format|
      if @threesixty_q.update_attributes(params[:threesixty_q])
        flash[:notice] = 'ThreesixtyQ was successfully updated.'
        format.html { redirect_to(@threesixty_q) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @threesixty_q.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /threesixty_qs/1
  # DELETE /threesixty_qs/1.xml
  def destroy
    @threesixty_q = ThreesixtyQ.find(params[:id])
    @threesixty_q.destroy

    respond_to do |format|
      format.html { redirect_to(threesixty_qs_url) }
      format.xml  { head :ok }
    end
  end
end
