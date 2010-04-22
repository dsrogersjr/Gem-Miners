class TopicsController < ApplicationController
  require_role 'admin', :only => :destroy
  before_filter :sideposts_updates
  
  # GET /topics/1
  # GET /topics/1.xml
  def show
    @topic = Topic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @topic }
    end
  end
  
  def rate
    @topic = Topic.find(params[:id])
    @topic.rate(params[:stars], current_user, params[:dimension])
  end

  # GET /topics/new
  # GET /topics/new.xml
  def new
    @topic = Topic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @topic }
    end
  end

  # POST /topics
  # POST /topics.xml
  def create  
    @topic = Topic.new(:name => params[:topic][:name], :last_poster_id => current_user.id, :last_post_at => Time.now, :forum_id => params[:topic][:forum_id], :user_id => current_user.id)  
    if @topic.save  
        flash[:notice] = "Successfully created topic."  
        redirect_to "/forums/#{@topic.forum_id}"  
      else  
        redirect :action => 'new'   
    end  
  end

  # DELETE /topics/1
  # DELETE /topics/1.xml
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy

    respond_to do |format|
      format.html { redirect_to "/forums/#{@topic.forum_id}"  }
      format.xml  { head :ok }
    end
  end
end
