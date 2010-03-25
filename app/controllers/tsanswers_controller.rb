class TsanswersController < ApplicationController
  # GET /tsanswers
  # GET /tsanswers.xml
  def index
    @tsanswers = Tsanswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tsanswers }
    end
  end

  # GET /tsanswers/1
  # GET /tsanswers/1.xml
  def show
    @tsanswer = Tsanswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tsanswer }
    end
  end

  # GET /tsanswers/new
  # GET /tsanswers/new.xml
  def new
    @tsanswer = Tsanswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tsanswer }
    end
  end

  # GET /tsanswers/1/edit
  def edit
    @tsanswer = Tsanswer.find(params[:id])
  end

  # POST /tsanswers
  # POST /tsanswers.xml
  def create
    @tsquestion = Tsquestion.find(params[:tsquestion_id])
    @sid = @tsquestion.survey_id
    @survey = Survey.find(@sid)
    @skid = params[:tsquestion_id].to_i
    @tsanswer = @tsquestion.tsanswers.create!params[:tsanswer]

    respond_to do |format|
      if @tsanswer.save
        flash[:notice] = 'Product was successfully created.'
        format.html { redirect_to('/surveys/take/' + @sid.to_s) }
        format.xml  { render :xml => @tsanswer, :status => :created, :location => @tsanswer }
      else
        format.html { redirect_to('/surveys/take/' + @sid.to_s) }
        format.xml  { render :xml => @tsanswer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tsanswers/1
  # PUT /tsanswers/1.xml
  def update
    @tsanswer = Tsanswer.find(params[:id])

    respond_to do |format|
      if @tsanswer.update_attributes(params[:tsanswer])
        flash[:notice] = 'Tsanswer was successfully updated.'
        format.html { redirect_to(@tsanswer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tsanswer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tsanswers/1
  # DELETE /tsanswers/1.xml
  def destroy
    @tsanswer = Tsanswer.find(params[:id])
    @tqid = @tsanswer.tsquestion_id
    @tsquestion = Tsquestion.find(:first, :conditions => {:id => @tqid})
    @sid = @tsquestion.survey_id
    @tsanswer.destroy

    respond_to do |format|
      format.html { redirect_to("/surveys/take/" + @sid.to_s) }
      format.xml  { head :ok }
    end
  end
end
