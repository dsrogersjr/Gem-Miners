class TextanswersController < ApplicationController
  # GET /textanswers
  # GET /textanswers.xml
  def index
    @textanswers = Textanswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @textanswers }
    end
  end

  # GET /textanswers/1
  # GET /textanswers/1.xml
  def show
    @textanswer = Textanswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @textanswer }
    end
  end

  # GET /textanswers/new
  # GET /textanswers/new.xml
  def new
    @textanswer = Textanswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @textanswer }
    end
  end

  # GET /textanswers/1/edit
  def edit
    @textanswer = Textanswer.find(params[:id])
  end

  # POST /textanswers
  # POST /textanswers.xml
  def create
    @textquestion = Textquestion.find(params[:textquestion_id])
    @sid = @textquestion.survey_id
    @survey = Survey.find(@sid)
    @textanswer = @textquestion.textanswers.create!params[:textanswer]
    redirect_to '/surveys/take/' + @sid.to_s
  end

  # PUT /textanswers/1
  # PUT /textanswers/1.xml
  def update
    @textanswer = Textanswer.find(params[:id])

    respond_to do |format|
      if @textanswer.update_attributes(params[:textanswer])
        flash[:notice] = 'Textanswer was successfully updated.'
        format.html { redirect_to(@textanswer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @textanswer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /textanswers/1
  # DELETE /textanswers/1.xml
  def destroy
    @textanswer = Textanswer.find(params[:id])
    @tqid = @textanswer.textquestion_id
    @textquestion = Textquestion.find(:first, :conditions => {:id => @tqid})
    @sid = @textquestion.survey_id
    @textanswer.destroy

    respond_to do |format|
      format.html { redirect_to("/surveys/take/" + @sid.to_s) }
      format.xml  { head :ok }
    end
  end
end
