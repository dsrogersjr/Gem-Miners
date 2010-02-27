class QuestionsController < ApplicationController
  layout 'private'
  
  def create
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.create!(params[:question])
    redirect_to @survey
  end
  
  def show
    @question = Question.find(params[:id])
    @survey = Survey.find(@question.survey_id)
    
    if @question.question_type == 'm'
      @question_type = 'multiple choice'
    else
      @question_type = 'essay'
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question }
    end
  end
  
  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])
    @survey = Survey.find(@question.survey_id)

    respond_to do |format|
      if @question.update_attributes(params[:question])
        flash[:notice] = 'Question was successfully updated.'
        format.html { redirect_to(@survey) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @question = Question.find(params[:id])
    @survey = Survey.find(@question.survey_id)
    @question.destroy

    respond_to do |format|
      format.html { redirect_to(@survey) }
      format.xml  { head :ok }
    end
  end
end