After('@logout') do
  click_link 'Sair'
end

After do |scenario|
  nome_cenario =  scenario.name.gsub(/[^A-Za-z0-9 ]/,'')
  nome_cenario = nome_cenario.gsub(' ','_').downcase!
  screenshot = "log/screenshots/#{nome_cenario}.png"
  page.save_screenshot(screenshot)
  attach(screenshot, 'image/png')
end
