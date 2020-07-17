Dado('que eu acesso a pagina principal') do
   visit 'http://raspberry/loja/' 

end

Quando('eu fizer login com {string} e {string}') do |email, senha|
  @email = email
  LoginPages.new.faz_login(email, senha)
end

Então('devo ser logado  com sucesso.') do
  expect(page).to have_content @email 
end

Então('deve aparecer a mensagem: {string}') do |mensagem|
  expect(page).to have_content mensagem 
end

