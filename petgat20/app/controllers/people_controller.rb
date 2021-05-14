class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]

  # GET /people
  def index
    @people = People.find_by_sql("SELECT people.*, addresses.* FROM people LEFT JOIN addresses on addresses.people_id = people.CPF")
    render json: @people
  end

  # GET /people/1
  def show
    render json: @person
  end

  # POST /people
  def create
    @person = People.new(person_params)
    if @person.save
      render json: @person, status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/1
  def update
    if @person.update(person_params)
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  def destroy
    @person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = People.includes(:address).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_params
      params.require(:people).permit(
        :CPF, :nome, :RG, :data_nasc, :genero, :email,  
        {:address_attributes => [:people_id, :cep, :endereco, :numero, :complemento, :pais, :estado, :cidade, :bairro]}
      )
    end
end
