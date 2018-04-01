class Dashboard::AdminController < Dashboard::DashboardController
  def index
    @admin = current_user
  end

  def new
  end

  def create
    current_user.assign_attributes(admin_params)

    if current_user.save
      render json: {
        message: 'Successfully Saved!'
      }
    else
      render json: {
        message: current_user.errors.full_messages.to_sentence
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

  def admin_params
    params.require(:admin).permit!
  end
end
