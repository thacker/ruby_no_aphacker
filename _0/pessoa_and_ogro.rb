class Pessoa
  attr_accessor :cor_dos_olhos, :idade

  def initialize
    @idade = 0
  end

  def aniversario
    @idade = @idade + 1 if @idade > 5
  end
end

class Ogro < Pessoa
  def initialize
    super
    @cor_dos_olhos = "azul"
  end
end

