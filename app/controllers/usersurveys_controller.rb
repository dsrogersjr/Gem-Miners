class UsersurveysController < ApplicationController
  # GET /usersurveys
  # GET /usersurveys.xml
  def index
    @usersurveys = Usersurvey.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @usersurveys }
    end
  end

  # GET /usersurveys/1
  # GET /usersurveys/1.xml
  def show
    @usersurvey = Usersurvey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @usersurvey }
    end
  end

  # GET /usersurveys/new
  # GET /usersurveys/new.xml
  def new
    @usersurvey = Usersurvey.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @usersurvey }
    end
  end

  # GET /usersurveys/1/edit
  def edit
    @usersurvey = Usersurvey.find(params[:id])
  end

  # POST /usersurveys
  # POST /usersurveys.xml
  def create
    @usersurvey = Usersurvey.new(params[:usersurvey])

    respond_to do |format|
      if @usersurvey.save
        flash[:notice] = 'Usersurvey was successfully created.'
        format.html { redirect_to(@usersurvey) }
        format.xml  { render :xml => @usersurvey, :status => :created, :location => @usersurvey }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @usersurvey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /usersurveys/1
  # PUT /usersurveys/1.xml
  def update
    @usersurvey = Usersurvey.find(params[:id])

    respond_to do |format|
      if @usersurvey.update_attributes(params[:usersurvey])
        flash[:notice] = 'Usersurvey was successfully updated.'
        format.html { redirect_to(@usersurvey) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @usersurvey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /usersurveys/1
  # DELETE /usersurveys/1.xml
  def destroy
    @usersurvey = Usersurvey.find(params[:id])
    @usersurvey.destroy

    respond_to do |format|
      format.html { redirect_to(usersurveys_url) }
      format.xml  { head :ok }
    end
  end
end
