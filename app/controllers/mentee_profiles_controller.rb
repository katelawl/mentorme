class MenteeProfilesController < ApplicationController
  before_action :set_mentee_profile, only: [:show, :edit, :update, :destroy]

  # GET /mentee_profiles
  # GET /mentee_profiles.json
  def index
    @mentee_profiles = MenteeProfile.all
  end

  # GET /mentee_profiles/1
  # GET /mentee_profiles/1.json
  def show
  end

  # GET /mentee_profiles/new
  def new
    @mentee_profile = MenteeProfile.new
  end

  # GET /mentee_profiles/1/edit
  def edit
  end

  # POST /mentee_profiles
  # POST /mentee_profiles.json
  def create
    @mentee_profile = MenteeProfile.new(mentee_profile_params)

    respond_to do |format|
      if @mentee_profile.save
        format.html { redirect_to @mentee_profile, notice: 'Mentee profile was successfully created.' }
        format.json { render :show, status: :created, location: @mentee_profile }
      else
        format.html { render :new }
        format.json { render json: @mentee_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mentee_profiles/1
  # PATCH/PUT /mentee_profiles/1.json
  def update
    respond_to do |format|
      if @mentee_profile.update(mentee_profile_params)
        format.html { redirect_to @mentee_profile, notice: 'Mentee profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @mentee_profile }
      else
        format.html { render :edit }
        format.json { render json: @mentee_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mentee_profiles/1
  # DELETE /mentee_profiles/1.json
  def destroy
    @mentee_profile.destroy
    respond_to do |format|
      format.html { redirect_to mentee_profiles_url, notice: 'Mentee profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentee_profile
      @mentee_profile = MenteeProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mentee_profile_params
      params.fetch(:mentee_profile, {})
    end
end
