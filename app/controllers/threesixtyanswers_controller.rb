class ThreesixtyanswersController < ApplicationController
  before_filter :sideposts_updates
  
  # GET /threesixtyanswers
  # GET /threesixtyanswers.xml
  def index
    @threesixtyanswers = Threesixtyanswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @threesixtyanswers }
    end
  end

  # GET /threesixtyanswers/1
  # GET /threesixtyanswers/1.xml
  def show
    @threesixtyanswer = Threesixtyanswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @threesixtyanswer }
    end
  end

  # GET /threesixtyanswers/new
  # GET /threesixtyanswers/new.xml
  def new
    @threesixtyanswer = Threesixtyanswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @threesixtyanswer }
    end
  end

  # GET /threesixtyanswers/1/edit
  def edit
    @threesixtyanswer = Threesixtyanswer.find(params[:id])
  end

  # POST /threesixtyanswers
  # POST /threesixtyanswers.xml
  def create
    @threesixtyq = Threesixtyq.find(params[:threesixtyq_id])
    @sid = @threesixtyq.threesixty_id
    @threesixty = Threesixty.find(@sid)
    @threesixtyanswer = @threesixtyq.threesixtyanswers.create!params[:threesixtyanswer]
    redirect_to '/threesixties/take/' + @sid.to_s
  end

  # PUT /threesixtyanswers/1
  # PUT /threesixtyanswers/1.xml
  def update
    @threesixtyanswer = Threesixtyanswer.find(params[:id])

    respond_to do |format|
      if @threesixtyanswer.update_attributes(params[:threesixtyanswer])
        flash[:notice] = 'Threesixtyanswer was successfully updated.'
        format.html { redirect_to(@threesixtyanswer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @threesixtyanswer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /threesixtyanswers/1
  # DELETE /threesixtyanswers/1.xml
  def destroy
    @tsa = Threesixtyanswer.find(params[:id])
    @tqid = @tsa.threesixtyq_id
    @tsq = Threesixtyq.find(:first, :conditions => {:id => @tqid})
    @sid = @tsq.threesixty_id
    @tsa.destroy

    respond_to do |format|
      format.html { redirect_to("/threesixties/take/" + @sid.to_s) }
      format.xml  { head :ok }
    end
  end
end
