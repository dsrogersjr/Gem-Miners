class ThreesixtytextasController < ApplicationController
  # GET /threesixtytextas
  # GET /threesixtytextas.xml
  def index
    @threesixtytextas = Threesixtytexta.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @threesixtytextas }
    end
  end

  # GET /threesixtytextas/1
  # GET /threesixtytextas/1.xml
  def show
    @threesixtytexta = Threesixtytexta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @threesixtytexta }
    end
  end

  # GET /threesixtytextas/new
  # GET /threesixtytextas/new.xml
  def new
    @threesixtytexta = Threesixtytexta.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @threesixtytexta }
    end
  end

  # GET /threesixtytextas/1/edit
  def edit
    @threesixtytexta = Threesixtytexta.find(params[:id])
  end

  # POST /threesixtytextas
  # POST /threesixtytextas.xml
  def create
    @threesixtytextq = Threesixtytextq.find(params[:threesixtytextq_id])
    @sid = @threesixtytextq.threesixty_id
    @threesixty = Threesixty.find(@sid)
    @threesixtytexta = @threesixtytextq.threesixtytextas.create!params[:threesixtytexta]
    redirect_to '/threesixties/take/' + @sid.to_s
  end

  # PUT /threesixtytextas/1
  # PUT /threesixtytextas/1.xml
  def update
    @threesixtytexta = Threesixtytexta.find(params[:id])

    respond_to do |format|
      if @threesixtytexta.update_attributes(params[:threesixtytexta])
        flash[:notice] = 'Threesixtytexta was successfully updated.'
        format.html { redirect_to(@threesixtytexta) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @threesixtytexta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /threesixtytextas/1
  # DELETE /threesixtytextas/1.xml
  def destroy
    @tsa = Threesixtytexta.find(params[:id])
    @tqid = @tsa.threesixtytextq_id
    @tsq = Threesixtytextq.find(:first, :conditions => {:id => @tqid})
    @sid = @tsq.threesixty_id
    @tsa.destroy

    respond_to do |format|
      format.html { redirect_to("/threesixties/take/" + @sid.to_s) }
      format.xml  { head :ok }
    end
  end
end
