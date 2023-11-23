require_relative 'processador'
require_relative 'placa_mae'
require_relative 'memoria_ram'
require_relative 'placa_video'

placas_compativeis = []
has_integrated_graphics = false
ram_compativel = []
max_ram_slots = 0
max_ram_capacity = 0
# escolha_processador = nil
# escolha_placa_mae = nil
# escolha_memoria_ram = []
# escolha_placa_video = nil

loop do
  puts "Escolha um Processador: "
  pro1 = Intel5.new
  puts pro1.apresentar
  pro2 = Intel7.new
  puts pro2.apresentar
  pro3 = Amd5.new
  puts pro3.apresentar
  pro4 = Amd7.new
  puts pro4.apresentar

  escolha = gets.chomp.to_i
  case escolha
  when 1
      processador = Intel5.new
      puts "Você escolheu a placa: #{processador.modelo}"
      placas_compativeis = %w[Asus AsRock]
      break
    when 2
      processador = Intel7.new
      puts "Você escolheu a placa: #{processador.modelo}"
      placas_compativeis = %w[Asus AsRock]
      break
    when 3
      processador = Amd5.new
      puts "Você escolheu a placa: #{processador.modelo}"
      placas_compativeis = %w[Aorus AsRock]
      break
    when 4
      processador = Amd7.new
      puts "Você escolheu a placa: #{processador.modelo}"
      placas_compativeis = %w[Aorus AsRock]
      break
  else
    puts "Escolha inválida!"
  end
end
puts "==================================================================================================="

loop do
  puts "Escolha uma Placa Mãe compatível com o Processador: "
  p1 = Asus.new
  puts p1.apresentar if placas_compativeis.include?("Asus")
  p2 = Aorus.new
  puts p2.apresentar if placas_compativeis.include?("Aorus")
  p3 = AsRock.new
  puts p3.apresentar if placas_compativeis.include?("AsRock")

  escolha = gets.chomp.to_i
  case escolha
    when 1
      placa = Asus.new
      puts "Você escolheu a placa: #{placa.nome}"
      ram_compativel = %w[Memoria4 Memoria8 Memoria16]
      max_ram_slots = 2
      max_ram_capacity = 16
      has_integrated_graphics = false
      break
    when 2
      placa = Aorus.new
      puts "Você escolheu a placa: #{placa.nome}"
      ram_compativel = %w[Memoria4 Memoria8 Memoria16]
      max_ram_slots = 2
      max_ram_capacity = 16
      has_integrated_graphics = false
      break
    when 3
      placa = AsRock.new
      puts "Você escolheu a placa: #{placa.nome}"
      ram_compativel = %w[Memoria4 Memoria8 Memoria16 Memoria32 Memoria64]
      max_ram_slots = 4
      max_ram_capacity = 64
      has_integrated_graphics = true
      break
    else
      puts "Escolha inválida!"
  end
end
loop do
  memoria_ram_escolhida = []
  total_ram_capacity = 0

  puts "Escolha uma das Memórias RAMs compatívei com a Placa Mãe: "
  ram_compativel.each_with_index do |ram, index|
    puts "#{index + 1}. #{ram}"
  end

  loop do
    escolha = gets.chomp.to_i
    if escolha >= 1 && escolha <= ram_compativel.length
      escolha_ram = case escolha
                    when 1
                      Memoria4.new
                    when 2
                      Memoria8.new
                    when 3
                      Memoria16.new
                    when 4
                      Memoria32.new
                    when 5
                      Memoria64.new
                    else
                      puts "Escolha inválida! Escolha uma das opções citadas"
                    end

      if escolha_ram && total_ram_capacity + escolha_ram.tamanho <= max_ram_capacity && memoria_ram_escolhida.length < max_ram_slots
        memoria_ram_escolhida << escolha_ram
        total_ram_capacity += escolha_ram.tamanho
        puts "Você escolheu a memória RAM: #{escolha_ram.produto}"
        puts "Capacidade Total de RAM Selecionada: #{total_ram_capacity} GB"
      else
        puts "Memória RAM inválida ou excedeu a capacidade ou slots da placa-mãe."
        break
      end
    else
      puts "Escolha inválida! Escolha uma das opções citadas"
    end
    if total_ram_capacity >= max_ram_capacity || memoria_ram_escolhida.length >= max_ram_slots
      break
    end
  end
  if total_ram_capacity >= max_ram_capacity || memoria_ram_escolhida.length >= max_ram_slots
    break
  end
end
if !has_integrated_graphics
  loop do
    puts "Escolha uma Placa de Vídeo: "
    pv1 = Video_Geforce.new
    puts pv1.apresentar
    pv2 = Video_Asus.new
    puts pv2.apresentar
    pv3 = Video_GigaByte.new
    puts pv3.apresentar

    escolha = gets.chomp.to_i
    case escolha
      when 1
        placa_video = Video_Geforce.new
        puts "Você escolheu a placa de vídeo: #{placa_video.nome}"
        break
      when 2
        placa_video = Video_Asus.new
        puts "Você escolheu a placa de vídeo: #{placa_video.nome}"
        break
      when 3
        placa_video = Video_GigaByte.new
        puts "Você escolheu a placa de vídeo: #{placa_video.nome}"
        break
      else
        puts "Escolha inválida!"
    end
  end
else
  puts "A placa mãe possui vídeo integrado, portanto, não é necessário selecionar uma placa de vídeo."
end
puts "==================================================================================================="
# puts "Resumo das escolhas:"
# puts "Processador: #{escolha_processador}"
# puts "Placa Mãe: #{escolha_placa_mae}"
# puts "Memórias RAM:"
# escolha_memoria_ram.each { |ram| puts "- #{ram}" }
# puts "Placa de Vídeo: #{escolha_placa_video}"

