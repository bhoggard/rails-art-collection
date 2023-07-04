class Admin::NationalitiesController < AdminController
  before_action :set_nationality, only: %i[show edit update destroy]

  def index
    @nationalities = Nationality.all
  end

  def show
  end

  def new
    @nationality = Nationality.new
  end

  def edit
  end

  def create
    @nationality = Nationality.new(nationality_params)

    if @nationality.save
      redirect_to admin_nationalities_url, notice: "Nationality was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @nationality.update(nationality_params)
      redirect_to admin_nationalities_url, notice: "Nationality was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @nationality.destroy
    redirect_to admin_nationalities_url, notice: "Nationality was successfully destroyed.", status: :see_other
  end

  private

  def set_nationality
    @nationality = Nationality.find(params[:id])
  end

  def nationality_params
    params.require(:nationality).permit(:name)
  end
end
