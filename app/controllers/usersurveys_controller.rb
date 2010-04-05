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

  # GET /usersurveys/1/edit
  def edit
    @usersurvey = Usersurvey.find(params[:id])
  end

  # POST /usersurveys
  # POST /usersurveys.xml
  def create
    # @usersurvey = Usersurvey.new(params[:usersurvey])
    @survey = Survey.find(params[:survey_id])
    @usersurvey = @survey.usersurveys.create!(params[:usersurvey])
    redirect_to '/surveys/administer/' + @survey.id.to_s

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
    @survey = Survey.find(@usersurvey.survey_id)
    @usersurvey.destroy
    redirect_to '/surveys/administer/' + @survey.id.to_s

  end
end
