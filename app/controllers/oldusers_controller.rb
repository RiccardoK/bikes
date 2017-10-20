class OldusersController < ApplicationController
  before_action :set_olduser, only: [:show, :edit, :update, :destroy]

  # GET /oldusers
  # GET /oldusers.json
  def index
    @oldusers = Olduser.all
  end

  # GET /oldusers/1
  # GET /oldusers/1.json
  def show
  end

  # GET /oldusers/new
  def new
    @olduser = Olduser.new
  end

  # GET /oldusers/1/edit
  def edit
  end

  # POST /oldusers
  # POST /oldusers.json
  def create
    @olduser = Olduser.new(olduser_params)

    respond_to do |format|
      if @olduser.save
        format.html { redirect_to @olduser, notice: 'Olduser was successfully created.' }
        format.json { render :show, status: :created, location: @olduser }
      else
        format.html { render :new }
        format.json { render json: @olduser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oldusers/1
  # PATCH/PUT /oldusers/1.json
  def update
    respond_to do |format|
      if @olduser.update(olduser_params)
        format.html { redirect_to @olduser, notice: 'olduser was successfully updated.' }
        format.json { render :show, status: :ok, location: @olduser }
      else
        format.html { render :edit }
        format.json { render json: @olduser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oldusers/1
  # DELETE /oldusers/1.json
 def destroy
    @olduser = Olduser.find(params[:id])
    if @olduser.present?
      @olduser.destroy
    end
    redirect_to root_url
end


private
    # Use callbacks to share common setup or constraints between actions.
    def set_olduser
      @olduser = Olduser.find(params[:id])
    end

    
    # Never trust parameters from the scary internet, only allow the white list through.
    def olduser_params
      params.require(:olduser).permit(:name, :description, :lastname, :user_id, :product_id )
    end
end