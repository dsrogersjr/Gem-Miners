class McanswersController < ApplicationController
  # GET /mcanswers
  # GET /mcanswers.xml
  def index
    @mcanswers = Mcanswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mcanswers }
    end
  end

  # GET /mcanswers/1
  # GET /mcanswers/1.xml
  def show
    @mcanswer = Mcanswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mcanswer }
    end
  end

  # GET /mcanswers/new
  # GET /mcanswers/new.xml
  def new
    @mcanswer = Mcanswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mcanswer }
    end
  end

  # GET /mcanswers/1/edit
  def edit
    @mcanswer = Mcanswer.find(params[:id])
  end

  # POST /mcanswers
  # POST /mcanswers.xml
  def create
    @mcquestion = Mcquestion.find(params[:mcquestion_id])
    @sid = @mcquestion.survey_id
    @survey = Survey.find(@sid)
    @mcanswer = @mcquestion.mcanswers.create!params[:mcanswer]
    redirect_to '/surveys/take/' + @sid.to_s
  end

  # PUT /mcanswers/1
  # PUT /mcanswers/1.xml
  def update
    @mcanswer = Mcanswer.find(params[:id])

    respond_to do |format|
      if @mcanswer.update_attributes(params[:mcanswer])
        flash[:notice] = 'mcanswer was successfully updated.'
        format.html { redirect_to(@mcanswer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mcanswer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mcanswers/1
  # DELETE /mcanswers/1.xml
  def destroy
    @mcanswer = Mcanswer.find(params[:id])
    @tqid = @mcanswer.mcquestion_id
    @mcquestion = Mcquestion.find(:first, :conditions => {:id => @tqid})
    @sid = @mcquestion.survey_id
    @mcanswer.destroy

    respond_to do |format|
      format.html { redirect_to("/surveys/take/" + @sid.to_s) }
      format.xml  { head :ok }
    end
  end
end
