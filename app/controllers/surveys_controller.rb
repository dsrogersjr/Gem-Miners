class SurveysController < ApplicationController
  layout 'private'
  
  def results
    @survey = Survey.find(params[:id])
  end
  
  def administer
    @survey = Survey.find(params[:id])
    @user = current_user
    @users = User.all
  end
  
  
  def take
    @survey = Survey.find(params[:id])
    @user = current_user
    
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @survey }
    end
  end
  
  # GET /surveys
  # GET /surveys.xml
  def index
    @user = current_user
    @surveys = Survey.find(:all, :conditions => "survey_creator" == @user )
    @doclink = "http://docs.google.com/Doc?docid=0AQmrXbrAVr9xZGhnOGpnc18yMWQzcDNraGNy&hl=en"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @surveys }
    end
  end

  # GET /surveys/1
  # GET /surveys/1.xml
  def show
    @survey = Survey.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @survey }
    end
  end

  # GET /surveys/new
  # GET /surveys/new.xml
  def new
    @user = current_user
    @survey = Survey.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @survey }
    end
  end

  # GET /surveys/1/edit
  def edit
    @survey = Survey.find(params[:id])
  end

  # POST /surveys
  # POST /surveys.xml
  def create
    @survey = Survey.new(params[:survey])

    respond_to do |format|
      if @survey.save
        flash[:notice] = 'Survey was successfully created.'
        format.html { redirect_to(@survey) }
        format.xml  { render :xml => @survey, :status => :created, :location => @survey }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @survey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /surveys/1
  # PUT /surveys/1.xml
  def update
    @survey = Survey.find(params[:id])

    respond_to do |format|
      if @survey.update_attributes(params[:survey])
        flash[:notice] = 'Survey was successfully updated.'
        format.html { redirect_to(@survey) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @survey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /surveys/1
  # DELETE /surveys/1.xml
  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy

    respond_to do |format|
      format.html { redirect_to(surveys_url) }
      format.xml  { head :ok }
    end
  end
end
