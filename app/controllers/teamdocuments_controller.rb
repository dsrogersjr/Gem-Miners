class TeamdocumentsController < ApplicationController
  before_filter :sideposts_updates
  before_filter :login_required
  
  # GET /teamdocuments
  # GET /teamdocuments.xml
  def index
    @teamdocument = Teamdocument.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @teamdocuments }
    end
  end

  # GET /teamdocuments/1
  # GET /teamdocuments/1.xml
  def show
    @teamdocument = Teamdocument.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @teamdocument }
    end
  end

  # GET /teamdocuments/new
  # GET /teamdocuments/new.xml
  def new
    @teamdocument = Teamdocument.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @teamdocument }
    end
  end

  # GET /teamdocuments/1/edit
  def edit
    @teamdocument = Teamdocument.find(params[:id])
  end

  # POST /teamdocuments
  # POST /teamdocuments.xml
  def create
    @teamdocument = Teamdocument.new(params[:teamdocument])

    respond_to do |format|
      if @teamdocument.save
        flash[:notice] = 'Teamdocument was successfully created.'
        format.html { redirect_to(@teamdocument) }
        format.xml  { render :xml => @teamdocument, :status => :created, :location => @teamdocument }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @teamdocument.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /teamdocuments/1
  # PUT /teamdocuments/1.xml
  def update
    @teamdocument = Teamdocument.find(params[:id])

    respond_to do |format|
      if @teamdocument.update_attributes(params[:teamdocument])
        flash[:notice] = 'Teamdocument was successfully updated.'
        format.html { redirect_to(@teamdocument) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @teamdocument.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /teamdocuments/1
  # DELETE /teamdocuments/1.xml
  def destroy
    @teamdocument = Teamdocument.find(params[:id])
    @teamdocument.destroy

    respond_to do |format|
      format.html { redirect_to(teamdocuments_url) }
      format.xml  { head :ok }
    end
  end
end
