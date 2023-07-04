class NationalitiesController < AdminController
  before_action :set_nationality, only: %i[show edit update destroy]

  # GET /nationalities
  def index
    @nationalities = Nationality.all
  end

  # GET /nationalities/1
  def show
  end

  # GET /nationalities/new
  def new
    @nationality = Nationality.new
  end

  # GET /nationalities/1/edit
  def edit
  end

  # POST /nationalities
  def create
    @nationality = Nationality.new(nationality_params)

    if @nationality.save
      redirect_to @nationality, notice: "Nationality was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /nationalities/1
  def update
    if @nationality.update(nationality_params)
      redirect_to @nationality, notice: "Nationality was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /nationalities/1
  def destroy
    @nationality.destroy
    redirect_to nationalities_url, notice: "Nationality was successfully destroyed.", status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_nationality
    @nationality = Nationality.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def nationality_params
    params.require(:nationality).permit(:name)
  end
end
