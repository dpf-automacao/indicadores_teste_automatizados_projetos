Dado("que gostaria de visualizar os indicadores do sistema Jenkins e Mantis") do
       
        @siscaer = Dashboard.new
  end
  
  Quando("eu estou em um loop infinito") do
       
        #setup projeto siscaer
        @url_siscaer_capa = 'http://10.2.108.16/siscaerhome/home.html'
        @url_siscaer_projeto = 'http://10.2.108.12:8080/job/DPF/job/SISCAER/job/PROJETO/job/siscaer/'
        @siscaer_mantis_usuario = 'apsantos8'
        @siscaer_mantis_senha ='stefanini@10'
        
        
        loop do
               @siscaer.exibir @url_siscaer_capa, @url_siscaer_projeto, @siscaer_mantis_usuario, @siscaer_mantis_senha
        end
  end