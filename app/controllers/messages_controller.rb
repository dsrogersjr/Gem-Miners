class MessagesController < ApplicationController
  layout 'private'

  # GET /messages/new
  # GET /messages/new.xml
  def new
    @message = Message.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @message }
    end
  end

  # GET /messages/1/edit
  def edit
    @message = Message.find(params[:id])
    admin_or_owner_required(@message.user.id)
  end

  # POST /messages
  # POST /messages.xml
  def create  
    @message = Message.new(:content => params[:message][:content], :topic_id => params[:message][:topic_id], :user_id => current_user.id)  
    if @message.save  
      @topic = Topic.find(@message.topic_id)  
      @topic.update_attributes(:last_poster_id => current_user.id, :last_post_at => Time.now)  
      flash[:notice] = "Successfully created message."  
      redirect_to "/topics/#{@message.topic_id}"  
    else  
      render :action => 'new'  
    end  
  end

  # PUT /messages/1
  # PUT /messages/1.xml
  def update  
    @message = Message.find(params[:id])
    admin_or_owner_required(@message.user.id)
      
    if @message.update_attributes(params[:message])  
      @topic = Topic.find(@message.topic_id)  
      @topic.update_attributes(:last_poster_id => current_user.id, :last_post_at => Time.now)  
      flash[:notice] = "Successfully updated message."  
      redirect_to @message  
    else  
      render :action => 'edit'  
    end  
  end

  # DELETE /messages/1
  # DELETE /messages/1.xml
  def destroy
    @message = Message.find(params[:id])  
    admin_or_owner_required(@message.user.id)  
    @message.destroy  
    flash[:notice] = "Successfully destroyed post."
    
    respond_to do |format|
      format.html { redirect_to forums_url }
      format.xml  { head :ok }
    end
  end
end
