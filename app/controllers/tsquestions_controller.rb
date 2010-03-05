class TsquestionsController < ApplicationController
  # GET /tsquestions
  # GET /tsquestions.xml
  def index
    @tsquestions = Tsquestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tsquestions }
    end
  end

  # GET /tsquestions/1
  # GET /tsquestions/1.xml
  def show
    @tsquestion = Tsquestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tsquestion }
    end
  end

  # GET /tsquestions/new
  # GET /tsquestions/new.xml
  def new
    @tsquestion = Tsquestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tsquestion }
    end
  end

  # GET /tsquestions/1/edit
  def edit
    @tsquestion = Tsquestion.find(params[:id])
  end

  # POST /tsquestions
  # POST /tsquestions.xml
  def create
    @survey = Survey.find(params[:survey_id])
    @tsquestion = @survey.tsquestions.create!(params[:tsquestion])
    redirect_to @survey
  end

  # PUT /tsquestions/1
  # PUT /tsquestions/1.xml
  def update
    @tsquestion = Tsquestion.find(params[:id])

    respond_to do |format|
      if @tsquestion.update_attributes(params[:tsquestion])
        flash[:notice] = 'Tsquestion was successfully updated.'
        format.html { redirect_to(@tsquestion) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tsquestion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tsquestions/1
  # DELETE /tsquestions/1.xml
  def destroy
    @tsquestion = Tsquestion.find(params[:id])
    @survey = Survey.find(@tsquestion.survey_id)
    @tsquestion.destroy

    respond_to do |format|
      format.html { redirect_to(@survey) }
      format.xml  { head :ok }
    end
  end
end