namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      #%x permite executar comandos do termianl
      spinner = TTY::Spinner.new("[:spinner] Apagando banco", format: :pulse_2)
      spinner.auto_spin
      %x(rails db:drop)
      spinner.success("Concluído!")

      spinner = TTY::Spinner.new("[:spinner] Criando banco", format: :pulse_2)
      spinner.auto_spin
      %x(rails db:create)
      spinner.success("Concluído!")

      spinner = TTY::Spinner.new("[:spinner] Migrando tabelas do banco", format: :pulse_2)
      spinner.auto_spin
      %x(rails db:migrate)
      spinner.success("Concluído!")

      spinner = TTY::Spinner.new("[:spinner] Povoando banco", format: :pulse_2)
      spinner.auto_spin
      %x(rails db:seed)
      spinner.success("Concluído!")
    else
      puts "Você nao esta em ambiente de desenvolvimento"
    end
  end

end
