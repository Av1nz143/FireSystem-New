class Dashboard::UniversityController < Dashboard::DashboardController
  def index
    @university = current_user.university || current_user.build_university
  end

  def new
  end

  def create
    university = University.find_or_initialize_by(id: university_params[:id])
    university.assign_attributes(university_params)

    if university.save
      current_user.university = university
      current_user.save

      render json: {
        message: 'Successfully Saved!'
      }
    else
      render json: {
        message: university.errors.full_messages.to_sentence
      }
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def university_params
    params.require(:university).permit!
  end
end
