class McquestionsController < ApplicationController
  before_filter :sideposts_updates
  
  def create
    @survey = Survey.find(params[:survey_id])
    @mcquestion = @survey.mcquestions.create!(params[:mcquestion])
    redirect_to @survey
  end
  
  def show
    @mcquestion = Mcquestion.find(params[:id])
    @survey = Survey.find(@mcquestion.survey_id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mcquestion }
    end
  end
  
  def edit
    @mcquestion = Mcquestion.find(params[:id])
    @survey = Survey.find(@mcquestion.survey_id)
  end
  
  def update
    @mcquestion = Mcquestion.find(params[:id])
    @survey = Survey.find(@mcquestion.survey_id)

    respond_to do |format|
      if @mcquestion.update_attributes(params[:mcquestion])
        flash[:notice] = 'mcquestion was successfully updated.'
        format.html { redirect_to(@survey) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mcquestion.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @mcquestion = Mcquestion.find(params[:id])
    @survey = Survey.find(@mcquestion.survey_id)
    @mcquestion.destroy

    respond_to do |format|
      format.html { redirect_to(@survey) }
      format.xml  { head :ok }
    end
  end
end