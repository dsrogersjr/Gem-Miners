class TextquestionsController < ApplicationController
  # GET /textquestions
  # GET /textquestions.xml
  def index
    @textquestions = Textquestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @textquestions }
    end
  end

  # GET /textquestions/1
  # GET /textquestions/1.xml
  def show
    @textquestion = Textquestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @textquestion }
    end
  end

  # GET /textquestions/new
  # GET /textquestions/new.xml
  def new
    @textquestion = Textquestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @textquestion }
    end
  end

  # GET /textquestions/1/edit
  def edit
    @textquestion = Textquestion.find(params[:id])
  end

  # POST /textquestions
  # POST /textquestions.xml
  def create
    @survey = Survey.find(params[:survey_id])
    @textquestion = @survey.textquestions.create!(params[:textquestion])
    redirect_to @survey
  end

  # PUT /textquestions/1
  # PUT /textquestions/1.xml
  def update
    @textquestion = Textquestion.find(params[:id])

    respond_to do |format|
      if @textquestion.update_attributes(params[:textquestion])
        flash[:notice] = 'Textquestion was successfully updated.'
        format.html { redirect_to(@textquestion) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @textquestion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /textquestions/1
  # DELETE /textquestions/1.xml
  def destroy
    @textquestion = Textquestion.find(params[:id])
    @survey = Survey.find(@textquestion.survey_id)
    @textquestion.destroy

    respond_to do |format|
      format.html { redirect_to(@survey) }
      format.xml  { head :ok }
    end
  end
end