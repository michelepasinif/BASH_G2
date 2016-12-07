#!/bin/bash
#
# Trabalho G2 da matéria Desenvolvimento para Redes de Computadores
# Criado por Michele Pasini França e Hermes Schroeder
# Data de conclusão 7 de dezembro de 2016



principal() {           # Função principal do programa
    clear               # limpa a tela
						# Imprimi as opções do case na tela 
	
	echo "[1] Fazer backup localmente"  
	echo "[2] Fazer backup para host remoto"
	echo "[3] Copiar arquivos providos por um host remoto"
	echo "[0] Sair do scrip"
	
	echo -n "Qual opção deseja?"
	read opcao
	
	# Aqui deve-se informar a ação que será tomada quando cada opção for acionada 
	
	case $opcao in 
	
		1)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
			
			funcao_1

			;;     # Encerra esta opção do comando case 
		
		2)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
			funcao_2
			;;     # Encerra esta opção do comando case

		3)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
			funcao_3
			;;     # Encerra esta opção do comando case 	

			
		0) #Função para sair do script_name
		
		
		clear
        exit ;;
			
	  
        *)              # esta opçao existe para caso o usuário digite um 
                        # valor diferente dos informados
        clear
		echo "Opção inválida" 
		read pause 
		principal  #Volta ao menu principal do programa 
	;;    
	esac		

}

#Aqui iniciam as funções 

funcao_1() {			#Função da opção 1 | Fazer backup localmente

					
			clear 
			
			echo "[1] Fazer backup um arquivo"
			echo "[2] Fazer backup de um pasta"
			echo "[0] Sair do submenu"

			
			echo -n "Qual opção deseja?"
			read opcao_1
								
			
			
			case $opcao_1 in 
	
		1)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
			funcao_arquivo_1

			;;     # Encerra esta opção do comando case 
		
		2)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
		
			funcao_pasta_1

			;;


		0) 				#Função para sair do script_name
		
		
			clear
        		exit ;;
			
	  
        	*)              # esta opçao existe para caso o usuário digite um 
                        	# valor diferente dos informados
        	clear
		
		echo "Opção inválida" 
		read pause 
		;;    
		esac		
		
}
			
			
				funcao_arquivo_1 () {
				
				#Capturando as variáveis para o comando 
				
				echo "Função Arquivo 1"
				echo "Digite o nome do arquivo"
				read arquivo_1
				echo "Digite o caminho completo onde esta o arquivo"
				read caminho_1
				echo "Digite o local para onde deseja copiar"
				read local_1
				
				#Backup utilizando cp 
				
				cp $caminho_1/$arquivo_1 $local_1
							
				
				}
				
				funcao_pasta_1 () {
				
				echo "Função Pasta"
				echo "Digite o caminho completo da pasta que deseja copiar"
				read pasta_1
				echo "Digite o local de destino da cópia"
				read destino_1
				
				#Parâmetro -r para copiar pastas 
				
				cp -r $pasta_1 $destino_1
				
								
				}
		
		
		
		
funcao_2() {			#Função da opção 2 | Fazer backup para host remoto

					
			clear 
			
			echo "[1] Fazer backup um arquivo"
			echo "[2] Fazer backup de um pasta"
			echo "[0] Sair do submenu"

			
			echo -n "Qual opção deseja?"
			read opcao_2
								
			
			
			case $opcao_2 in 
	
		1)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
			funcao_arquivo_2

			;;     # Encerra esta opção do comando case 
		
		2)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
		
			funcao_pasta_2

			;;


		0) 				#Função para sair do script_name
		
		
			clear
        		exit ;;
			
	  
        	*)              # esta opçao existe para caso o usuário digite um 
                        	# valor diferente dos informados
        	clear
		
		echo "Opção inválida" 
		read pause 
		;;    
		esac		
		
}
			
			
				funcao_arquivo_2 () {
				
				#Utilizando o comando SCP 
				#Capturando as variáveis 
				
				echo "Função Arquivo 2"
				echo "Digite o nome do arquivo de deseja copiar"
				read arquivo_2 
				echo "Digite o local do arquivo que deseja copiar"
				read local_2 
				echo "Digite o IP do host remoto"
				read IP_2
				echo "Digite a porta para conexão via SSH"
				read port_2
				echo "Digite o nome de usuário para conexão ao host remoto"
				read nome_2
				echo "Digite o caminho da pasta de destino"
				read destino_2
				
				#Executando scp com os parâmetros informados anteriormente para cópia de arquivo 
				#Comando -P para informar a porta 
				
					scp -P $port_2 $local_2/$arquivo_2 $nome_2@$IP_2:$destino_2
				
				}
				
				funcao_pasta_2 () {
				
				echo "Função Pasta"
				echo "Digite o o caminho completo da pasta que deseja copiar"
				read pasta_2 
				echo "Digite o IP do host remoto"
				read IP_2_2
				echo "Digite a porta para conexão via SSH"
				read port_2_2
				echo "Digite o nome de usuário para conexão ao host remoto"
				read nome_2_2
				echo "Digite o caminho da pasta de destino"
				read destino_2_2
				
				#Executando scp com os parâmetros informados anteriormente para cópia de pasta
				#Comando -P para informar a porta
				
				scp -P $port_2_2 $nome_2_2@$IP_2_2:$pasta_2 $destino_2_2
				
				}
		
		
		

funcao_3() {			#Função da opção 3 

						#Copiar arquivos providos por um host remoto
						
						
			clear 
			
			echo "[1] Fazer backup um arquivo"
			echo "[2] Fazer backup de um pasta ou pastas"
			echo "[0] Sair do submenu"

			
			echo -n "Qual opção deseja?"
			read opcao_3
								
			
			
			case $opcao_3 in 
	
		1)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
			funcao_arquivo_3

			;;     # Encerra esta opção do comando case 
		
		2)   	# Caso a opção seja selecionada 
				# Executa os comandos abaixo
				
		clear 
		
			funcao_pasta_3

			;;


		0) 				#Função para sair do script_name
		
		
			clear
        		exit ;;
			
	  
        	*)              # esta opçao existe para caso o usuário digite um 
                        	# valor diferente dos informados
        	clear
		
		echo "Opção inválida" 
		read pause 
		;;    
		esac		
		
}
			
			
				funcao_arquivo_3 () {
				
				echo "Função Arquivo 3"
				
				#Capturando variáveis 
				
				echo "Informe o IP do host remoto"
				read IP_3
				echo "Informe o usuário para conexão com o host remoto"
				read nome_3
				echo "Digite o número da porta para conexão SSH"
				read port_3
				echo "Informe o nome do arquivo que deseja copiar"
				read arquivo_3
				echo "Informe o caminho do arquivo no host remoto"
				read caminho_3
				echo "Informe o local de destino da copia"
				read destino_3 
				
				#Utilizando comando rsync com os parâmetros 
				# -v para exibir de modo verboso
				# --progress para exibir o progresso de transferência
				
				rsync -v --progress -e 'ssh -p $port_3' $nome_3@$IP_3:$caminho_3/$arquivo_3 $destino_3 
	          
				
				}
				
				funcao_pasta_3 () {
				
				echo "Função Pasta"
				
				#Capturando variáveis 
				
				echo "Informe o IP do host remoto"
				read IP_3_2
				echo "Informe o usuário para conexão com o host remoto"
				read nome_3_2
				echo "Digite o número da porta para conexão SSH"
				read port_3_2
				echo "Informe o nome da pasta que deseja copiar"
				read pasta_3_2
				echo "Informe o caminho da pasta no host remoto"
				read caminho_3_2
				echo "Informe o local de destino da copia"
				read destino_3_2 
				
				#Utilizando comando rsync com os parâmetros 
				# -v para exibir de modo verboso
				# --progress para exibir o progresso de transferência
				# -a para fazer cópia de pastas e subpastas 
				
				rsync -a -v --progress -e 'ssh -p $port_3_2' $nome_3_2@$IP_3_2:$caminho_3_2/$pasta_3_2 $destino_3_2 
								
				}
		
		
		
		
			



principal




			#Chama a função principal do programa
	
