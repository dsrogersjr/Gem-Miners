class GroupsController < ApplicationController
  
  # GET /groups
  # GET /groups.xml
  def index
    @groups = Group.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @groups }
    end
  end

  # GET /groups/1
  # GET /groups/1.xml
  def show
    @group = Group.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @group }
    end
  end

  # GET /groups/new
  # GET /groups/new.xml
  def new
    @group = Group.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @group }
    end
  end

  # GET /groups/1/edit
  def edit
    @group = Group.find(params[:id])
  end

  # POST /groups
  # POST /groups.xml
  def create
    @group = Group.new(params[:group])

    respond_to do |format|
      if @group.save
        flash[:notice] = 'Group was successfully created.'
        format.html { render :action => 'edit' }
        format.xml  { render :xml => @group, :status => :created, :location => @group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /groups/1
  # PUT /groups/1.xml
  def update
    @group = Group.find(params[:id])

    respond_to do |format|
      if @group.update_attributes(params[:group])
        flash[:notice] = 'Group was successfully updated.'
        format.html { render :action => 'edit' }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1
  # DELETE /groups/1.xml
  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    respond_to do |format|
      format.html { redirect_to(groups_url) }
      format.xml  { head :ok }
    end
  end
  
  def add_users
    @group = Group.find(params[:id])
    users = User.find_all_by_id(params[:user_ids])
    @group.users << users if request.post?
    respond_to do |format|
      format.html { redirect_to :controller => 'groups', :action => 'edit', :id => @group, :tab => 'users' }
      format.js { 
        render(:update) {|page| 
          page.replace_html "tab-content-users", :partial => 'groups/users'
          users.each {|user| page.visual_effect(:highlight, "user-#{user.id}") }
        }
      }
    end
  end
  
  def remove_user
    @group = Group.find(params[:id])
    @group.users.delete(User.find(params[:user_id])) if request.post?
    respond_to do |format|
      format.html { redirect_to :controller => 'groups', :action => 'edit', :id => @group, :tab => 'users' }
      format.js { render(:update) {|page| page.replace_html "tab-content-users", :partial => 'groups/users'} }
    end
  end
end
