class UserthreesixtiesController < ApplicationController
  # GET /userthreesixties
  # GET /userthreesixties.xml
  def index
    @userthreesixties = Userthreesixty.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @userthreesixties }
    end
  end

  # GET /userthreesixties/1
  # GET /userthreesixties/1.xml
  def show
    @userthreesixty = Userthreesixty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @userthreesixty }
    end
  end

  # GET /userthreesixties/new
  # GET /userthreesixties/new.xml
  def new
    @userthreesixty = Userthreesixty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @userthreesixty }
    end
  end

  # GET /userthreesixties/1/edit
  def edit
    @userthreesixty = Userthreesixty.find(params[:id])
  end

  # POST /userthreesixties
  # POST /userthreesixties.xml
  def create
    # @usersurvey = Usersurvey.new(params[:usersurvey])
    @threesixty = Threesixty.find(params[:threesixty_id])
    @userts = @threesixty.userthreesixties.create!(params[:userthreesixty])
    redirect_to '/threesixties/administer/' + @threesixty.id.to_s
  end

  # PUT /userthreesixties/1
  # PUT /userthreesixties/1.xml
  def update
    @userthreesixty = Userthreesixty.find(params[:id])

    respond_to do |format|
      if @userthreesixty.update_attributes(params[:userthreesixty])
        flash[:notice] = 'Userthreesixty was successfully updated.'
        format.html { redirect_to(@userthreesixty) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @userthreesixty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /userthreesixties/1
  # DELETE /userthreesixties/1.xml
  def destroy
    @userts = Userthreesixty.find(params[:id])
    @threesixty = Threesixty.find(@userts.threesixty_id)
    @userts.destroy
    redirect_to '/threesixties/administer/' + @threesixty.id.to_s

  end
end
