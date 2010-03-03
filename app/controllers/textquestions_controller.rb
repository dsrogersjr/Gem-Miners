class TextquestionsController < ApplicationController
  layout 'private'
  
  def create
    @survey = Survey.find(params[:survey_id])
    @textquestion = @survey.textquestions.create!(params[:textquestion])
    redirect_to @survey
  end
  
  def show
    @textquestion = Textquestion.find(params[:id])
    @survey = Survey.find(@textquestion.survey_id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @textquestion }
    end
  end
  
  def edit
    @textquestion = Textquestion.find(params[:id])
    @survey = Survey.find(@textquestion.survey_id)
  end
  
  def update
    @textquestion = Textquestion.find(params[:id])
    @survey = Survey.find(@textquestion.survey_id)

    respond_to do |format|
      if @textquestion.update_attributes(params[:textquestion])
        flash[:notice] = 'Text question was successfully updated.'
        format.html { redirect_to(@survey) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @textuestion.errors, :status => :unprocessable_entity }
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