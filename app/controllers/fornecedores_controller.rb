class FornecedoresController < ApplicationController
  def index
   @fornecedores = Fornecedor.all
   @fornecedores = Fornecedor.limit(4).order(id: "desc")
  end

  def novo
  end

  def cadastrar
    fornecedor = Fornecedor.new(parametros_de_fornecedor)
    if fornecedor.save
      flash[:notice] = "Cadastrado com sucesso"
      redirect_to fornecedores_path
    else
      flash[:error] = "Erro ao Cadastrar"
      render "novo"
    end
  end

  private

  def parametros_de_fornecedor 
    params.require(:fornecedor).permit(:nome, :razao_social, :cnpj, :endereco)
  end
end
