class ThreesixtiesController < ApplicationController    
  def results
    @threesixty = Threesixty.find(params[:id])
    @userthreesixties = Userthreesixty.all
    @threesixtyqs = Threesixtyq.all(:conditions => {:threesixty_id => @threesixty.id})
  end
    
    
  def take
    @threesixty = Threesixty.find(params[:id])
    @user = current_user
    @userthreesixty = Userthreesixty.first(:conditions => {:user_id => @user.id, :threesixty_id => @threesixty.id})
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @threesixty }
    end
  end
  
  def administer
    @threesixty = Threesixty.find(params[:id])
    @user = current_user
    @users = User.all
  end
  
  # GET /threesixties
  # GET /threesixties.xml
  def index
    @threesixties = Threesixty.all
    @user = current_user
  
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @threesixties }
    end
  end

  # GET /threesixties/1
  # GET /threesixties/1.xml
  def show
    @threesixty = Threesixty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @threesixty }
    end
  end

  # GET /threesixties/new
  # GET /threesixties/new.xml
  def new
    @user = current_user
    @threesixty = Threesixty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @threesixty }
    end
  end

  # GET /threesixties/1/edit
  def edit
    @threesixty = Threesixty.find(params[:id])
  end

  # POST /threesixties
  # POST /threesixties.xml
  def create
    @threesixty = Threesixty.new(params[:threesixty])

    respond_to do |format|
      if @threesixty.save
        flash[:notice] = 'Threesixty was successfully created.'
        format.html { redirect_to(@threesixty) }
        format.xml  { render :xml => @threesixty, :status => :created, :location => @threesixty }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @threesixty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /threesixties/1
  # PUT /threesixties/1.xml
  def update
    @threesixty = Threesixty.find(params[:id])

    respond_to do |format|
      if @threesixty.update_attributes(params[:threesixty])
        flash[:notice] = 'Threesixty was successfully updated.'
        format.html { redirect_to(@threesixty) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @threesixty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /threesixties/1
  # DELETE /threesixties/1.xml
  def destroy
    @threesixty = Threesixty.find(params[:id])
    @threesixty.destroy

    respond_to do |format|
      format.html { redirect_to(threesixties_url) }
      format.xml  { head :ok }
    end
  end
end
