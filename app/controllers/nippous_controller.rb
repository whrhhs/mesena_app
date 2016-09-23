class NippousController < ApplicationController
  before_action :set_nippou, only: [:show, :edit, :update, :destroy]

  # GET /nippous
  # GET /nippous.json
  def index
    @nippous = Nippou.all
  end

  # GET /nippous/1
  # GET /nippous/1.json
  def show
  end

  # GET /nippous/new
  def new
    @nippou = Nippou.new
  end

  # GET /nippous/1/edit
  def edit
  end

  # POST /nippous
  # POST /nippous.json
  def create
    @nippou = Nippou.new(nippou_params)

    respond_to do |format|
      if @nippou.save
        format.html { redirect_to @nippou, notice: 'Nippou was successfully created.' }
        format.json { render action: 'show', status: :created, location: @nippou }
      else
        format.html { render action: 'new' }
        format.json { render json: @nippou.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nippous/1
  # PATCH/PUT /nippous/1.json
  def update
    respond_to do |format|
      if @nippou.update(nippou_params)
        format.html { redirect_to @nippou, notice: 'Nippou was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nippou.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nippous/1
  # DELETE /nippous/1.json
  def destroy
    @nippou.destroy
    respond_to do |format|
      format.html { redirect_to nippous_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nippou
      @nippou = Nippou.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nippou_params
      params.require(:nippou).permit(:content, :user_id)
    end
end
