class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  def index
    @students = Student.all
  end

  # GET /students/1
  def show
    render json: @student
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  def create
    @student = Student.new(student_params)

    if @student.save
      render json: @student, status: :ok
    else
      render :new
    end
  end

  #for login api
  def login
    user_password = params[:password]
    user_email = params[:email]
    user = user_email.present? && AdminUser.find_by_email(user_email)
    if user.present?
      if user.valid_password? user_password
        sign_in user, store: false

        render json: user, status: 200
      else
        render json: { errors: "Invalid email or password" }, status: 422
      end
    else
      render json: {errors: "User does't exist"}, status: 422
    end

  end

  # PATCH/PUT /students/1
  def update
    if @student.update(student_params)
      render json: @student, status: :ok
      #redirect_to @student, notice: 'Student was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /students/1
  def destroy
    @student.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_params
      params.require(:student).permit(:name, :date_od_birth, :father_name, :admint_branch, :community, :contact_number, :address, :cut_off_marks, :markshett, :transfer_certificate, :ten_marksheet, :community_certificate, :aadhar_card, :income_certificate, :graduation_cerificate, :admin_user_id)
    end
end
