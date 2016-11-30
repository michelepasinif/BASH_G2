#!/bin/bash
#
# Trabalho G2 da matéria Desenvolvimento para Redes de Computadores
# Criado por Michele Pasini França
# Data de criação 30 de novembro de 2016



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

funcao_1() {			#Função da opção 1 

					
			clear 
			
			echo "[1] Fazer backup um arquivo"
			echo "[2] Fazer backup de um pasta ou pastas"
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
				
				
				echo "Função Arquivo 1"
				echo "Digite o nome do arquivo"
				read arquivo_1
				echo "Digite o caminho completo onde esta o arquivo"
				read caminho_1
				echo "Digite o local para onde deseja copiar"
				read local_1
				
				
							
				
				}
				
				funcao_pasta_1 () {
				
				echo "Função Pasta"
				
								
				}
		
		
		
		
funcao_2() {			#Função da opção 1 

					
			clear 
			
			echo "[1] Fazer backup um arquivo"
			echo "[2] Fazer backup de um pasta ou pastas"
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
				
				
				echo "Função Arquivo 2"
							
				
				}
				
				funcao_pasta_2 () {
				
				echo "Função Pasta"
				
								
				}
		
		
		

funcao_3() {			#Função da opção 1 

					
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
							
				
				}
				
				funcao_pasta_3 () {
				
				echo "Função Pasta"
				
								
				}
		
		
		
		
			



principal




			#Chama a função principal do programa
	
