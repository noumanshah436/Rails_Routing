class Animals::CatsController < ApplicationController
  before_action :set_animals_cat, only: %i[ show edit update destroy ]

  # GET /animals/cats or /animals/cats.json
  def index
    @animals_cats = Animals::Cat.all
  end

  # GET /animals/cats/1 or /animals/cats/1.json
  def show
  end

  # GET /animals/cats/new
  def new
    @animals_cat = Animals::Cat.new
  end

  # GET /animals/cats/1/edit
  def edit
  end

  # POST /animals/cats or /animals/cats.json
  def create
    @animals_cat = Animals::Cat.new(animals_cat_params)

    respond_to do |format|
      if @animals_cat.save
        format.html { redirect_to animals_cat_url(@animals_cat), notice: "Cat was successfully created." }
        format.json { render :show, status: :created, location: @animals_cat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animals_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animals/cats/1 or /animals/cats/1.json
  def update
    respond_to do |format|
      if @animals_cat.update(animals_cat_params)
        format.html { redirect_to animals_cat_url(@animals_cat), notice: "Cat was successfully updated." }
        format.json { render :show, status: :ok, location: @animals_cat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animals_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animals/cats/1 or /animals/cats/1.json
  def destroy
    @animals_cat.destroy

    respond_to do |format|
      format.html { redirect_to animals_cats_url, notice: "Cat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animals_cat
      @animals_cat = Animals::Cat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animals_cat_params
      params.require(:animals_cat).permit(:name, :age)
    end
end
