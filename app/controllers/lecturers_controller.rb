class LecturersController < ApplicationController
  before_action :set_lecturer, only: %i[ show edit update destroy ]

  # GET /lecturers or /lecturers.json
  def index
    #@lecturers = Lecturer.all
    @lecturers = Lecturer.search(params[:search])
  end

  #define the function for the search functionality - NOT WORKING
  # def searchLecturer
  #   @lecturers = Lecturer.where("title LIKE ?", "%" + params[:q] + "%")
  # end

  # GET /lecturers/1 or /lecturers/1.json
  def show
  end

  # GET /lecturers/new
  def new
    @lecturer = Lecturer.new
    @subject_titles = []
    @subjects = Subject.all
    @subjects.each do |s|
      @subject_titles.push(s[:title])
    end
  end

  # GET /lecturers/1/edit
  def edit
  end

  # POST /lecturers or /lecturers.json
  def create
    @lecturer = Lecturer.new(lecturer_params)

    respond_to do |format|
      if @lecturer.save
        format.html { redirect_to @lecturer, notice: "Lecturer was successfully created." }
        format.json { render :show, status: :created, location: @lecturer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lecturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lecturers/1 or /lecturers/1.json
  def update
    respond_to do |format|
      if @lecturer.update(lecturer_params)
        format.html { redirect_to @lecturer, notice: "Lecturer was successfully updated." }
        format.json { render :show, status: :ok, location: @lecturer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lecturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lecturers/1 or /lecturers/1.json
  def destroy
    @lecturer.destroy
    respond_to do |format|
      format.html { redirect_to lecturers_url, notice: "Lecturer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecturer
      @lecturer = Lecturer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lecturer_params
      params.require(:lecturer).permit(:title, :fname, :sname, :subject)
    end
end
