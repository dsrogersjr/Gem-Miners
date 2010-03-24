class McquestionsController < ApplicationController
  # GET /mcquestions
  # GET /mcquestions.xml
  def index
    @mcquestions = Mcquestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mcquestions }
    end
  end
  class McquestionsController < ApplicationController
    layout 'private'

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
  # GET /mcquestions/1
  # GET /mcquestions/1.xml
  def show
    @mcquestion = Mcquestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mcquestion }
    end
  end

  # GET /mcquestions/new
  # GET /mcquestions/new.xml
  def new
    @mcquestion = Mcquestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mcquestion }
    end
  end

  # GET /mcquestions/1/edit
  def edit
    @mcquestion = Mcquestion.find(params[:id])
  end

  # POST /mcquestions
  # POST /mcquestions.xml
  def create
    @mcquestion = Mcquestion.new(params[:mcquestion])

    respond_to do |format|
      if @mcquestion.save
        flash[:notice] = 'Mcquestion was successfully created.'
        format.html { redirect_to(@mcquestion) }
        format.xml  { render :xml => @mcquestion, :status => :created, :location => @mcquestion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mcquestion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mcquestions/1
  # PUT /mcquestions/1.xml
  def update
    @mcquestion = Mcquestion.find(params[:id])

    respond_to do |format|
      if @mcquestion.update_attributes(params[:mcquestion])
        flash[:notice] = 'Mcquestion was successfully updated.'
        format.html { redirect_to(@mcquestion) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mcquestion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mcquestions/1
  # DELETE /mcquestions/1.xml
  def destroy
    @mcquestion = Mcquestion.find(params[:id])
    @mcquestion.destroy

    respond_to do |format|
      format.html { redirect_to(mcquestions_url) }
      format.xml  { head :ok }
    end
  end
end
