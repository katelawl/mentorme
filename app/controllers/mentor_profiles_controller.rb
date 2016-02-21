class MentorProfilesController < ApplicationController
  before_action :set_mentor_profile, only: [:show, :edit, :update, :destroy]

  # GET /mentor_profiles
  # GET /mentor_profiles.json
  def index
    @mentor_profiles = MentorProfile.all
  end

  # GET /mentor_profiles/1
  # GET /mentor_profiles/1.json
  def show
    @mentor_profile=MentorProfile.find(params[:id])
  end

  # GET /mentor_profiles/new
  def new
    @mentor_profile = MentorProfile.new
  end

  # GET /mentor_profiles/1/edit
  def edit
  end

  # POST /mentor_profiles
  # POST /mentor_profiles.json
  def create
    @mentor_profile = MentorProfile.new(mentor_profile_params)

    respond_to do |format|
      if @mentor_profile.save
        format.html { redirect_to @mentor_profile, notice: 'Mentor profile was successfully created.' }
        format.json { render :show, status: :created, location: @mentor_profile }
      else
        format.html { render :new }
        format.json { render json: @mentor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentor_profiles/1
  # PATCH/PUT /mentor_profiles/1.json
  def update
    respond_to do |format|
      if @mentor_profile.update(mentor_profile_params)
        format.html { redirect_to @mentor_profile, notice: 'Mentor profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @mentor_profile }
      else
        format.html { render :edit }
        format.json { render json: @mentor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentor_profiles/1
  # DELETE /mentor_profiles/1.json
  def destroy
    @mentor_profile.destroy
    respond_to do |format|
      format.html { redirect_to mentor_profiles_url, notice: 'Mentor profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentor_profile
      @mentor_profile = MentorProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mentor_profile_params
      params.require(
        :mentor_profile).permit(
          :interest, :company, :jobtitle, :yearsofexperience)
    end
end
