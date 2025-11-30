class Api::V1::UsuariosController < ApplicationController

  protect_from_forgery with: :null_session
  def index
    @usuarios = ClienteCadastro.all
    render json: @usuarios
  end


  def show
    @usuarios = ClienteCadastro.find(params[:id])
    render json: @usuarios
  end


  def create
    @usuarios = ClienteCadastro.new(cliente_params)
    if @usuarios.save
      render json: @usuarios, status: :created
    else
      render json: @usuarios.errors, status: :unprocessable_entity
    end

  end

  def update
    @usuarios = ClienteCadastro.find(params[:id])

    if @usuarios.update(cliente_params)
      render json: @usuarios, status: :ok
    else
      render json: @usuarios.errors, status: :unprocessable_entity
    end


  end

  def destroy
    @usuario = ClienteCadastro.find_by(id: params[:id])
    if @usuario
      @usuario.destroy
      head :no_content
    else
      render json: { error: "Cliente não encontrado" }, status: :not_found
    end
  end

  private
  def cliente_params

    params.require(:cliente_cadastro).permit(:cpf, :gmail, :telefone, :senha_hash, :nome)
  end





end
