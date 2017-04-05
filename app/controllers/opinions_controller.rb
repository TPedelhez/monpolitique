class OpinionsController < ApplicationController
  # before_action :set_opinion, only: [:show, :edit, :update, :destroy]

  # GET /opinions
  # GET /opinions.json
  def index
    @opinions = Opinion.all
  end

  # GET /opinions/1
  # GET /opinions/1.json
  def show
  end

  # GET /opinions/new
  def new
    @card = Card.find(params[:card_id])


  end

  # GET /opinions/1/edit
  def edit
  end

  # POST /opinions
  # POST /opinions.json
  def create
    @card = Card.find(params[:card_id])
    @opinion = Opinion.new
    @opinion.user_id = current_user.id
    @opinion.card = Card.find(params[:card_id])
    @opinion.rate = params[:rate]
    respond_to do |format|
      if @opinion.save
        format.html { redirect_to "http://localhost:3000/cards/29/opinions/new" }
        format.json { render :show, status: :created, location: @opinion }
      else
        format.html { render :new }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end

  end


  # PATCH/PUT /opinions/1
  # PATCH/PUT /opinions/1.json
  def update

    @card = Card.find(params[:card_id])
    @opinion = Opinion.new
    @opinion.user_id = current_user.id
    @opinion.card = Card.find(params[:card_id])
    @opinion.rate = params[:rate]
    @opinion.save


    respond_to do |format|

        format.html { redirect_to new_card_opinion_path(card_id: rand(1..5)) }
        format.json { render :show, status: :ok, location: @opinion }

    end
  end

  # DELETE /opinions/1
  # DELETE /opinions/1.json
  def destroy
    @opinion.destroy
    respond_to do |format|
      format.html { redirect_to opinions_url, notice: 'Opinion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opinion
      @opinion = Opinion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def opinion_params
    #   params.require(:opinion).permit(:rate)
    # end

end
