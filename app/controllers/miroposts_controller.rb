class MiropostsController < ApplicationController
  # GET /miroposts
  # GET /miroposts.xml
  def index
    @miroposts = Miropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @miroposts }
    end
  end

  # GET /miroposts/1
  # GET /miroposts/1.xml
  def show
    @miropost = Miropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @miropost }
    end
  end

  # GET /miroposts/new
  # GET /miroposts/new.xml
  def new
    @miropost = Miropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @miropost }
    end
  end

  # GET /miroposts/1/edit
  def edit
    @miropost = Miropost.find(params[:id])
  end

  # POST /miroposts
  # POST /miroposts.xml
  def create
    @miropost = Miropost.new(params[:miropost])

    respond_to do |format|
      if @miropost.save
        format.html { redirect_to(@miropost, :notice => 'Miropost was successfully created.') }
        format.xml  { render :xml => @miropost, :status => :created, :location => @miropost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @miropost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /miroposts/1
  # PUT /miroposts/1.xml
  def update
    @miropost = Miropost.find(params[:id])

    respond_to do |format|
      if @miropost.update_attributes(params[:miropost])
        format.html { redirect_to(@miropost, :notice => 'Miropost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @miropost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /miroposts/1
  # DELETE /miroposts/1.xml
  def destroy
    @miropost = Miropost.find(params[:id])
    @miropost.destroy

    respond_to do |format|
      format.html { redirect_to(miroposts_url) }
      format.xml  { head :ok }
    end
  end
end
