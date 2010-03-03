class AnswersController < ApplicationController
  layout 'private'
  
  def index
    @answers = Answer.all
  end
  
  def create
    @textquestion = Textquestion.find(params[:textquestion_id])
    @sid = @textquestion.survey_id
    @survey = Survey.find(@sid)
    @answer = @textquestion.answers.create!params[:answer]
    redirect_to @survey
  end

  def show
    @answer = Answer.find(params[:id])
    @textquestion = Textquestion.find(@answer.textquestion_id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @answer }
    end
  end
  
  def edit
    @answer = Answer.find(params[:id])
    @textquestion = Textquestion.find(@answer.textquestion_id)
  end
  
  def update
    @answer = Answer.find(params[:id])
    @textquestion = Textquestion.find(@answer.textquestion_id)

    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        flash[:notice] = 'answer was successfully updated.'
        format.html { redirect_to(@survey) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end
  
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
