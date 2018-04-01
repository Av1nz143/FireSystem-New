class Dashboard::StudentsController < Dashboard::DashboardController
  def index
    university = current_user.university
    @students = university.students
  end

  def new
  end

  def create
    student = Student.new(student_params.merge(university_id: current_user.university_id))

    if student.save
      render json: {
        message: 'Successfully Saved!',
        student: student
      }
    else
      render json: {
        message: student.errors.full_messages.to_sentence
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
  def student_params
    params.require(:student).permit!
  end
end
