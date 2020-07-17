class LoginPages
    include Capybara::DSL
    
    def faz_login(email,senha)
        find('input[name=email]').set email 
        find('input[name=senha]').set senha 
        click_button 'Logar'
    end
 end