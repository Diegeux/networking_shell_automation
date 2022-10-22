#!/bin/bash

while :

do
  echo "Olá seja bem vindo(a) ao REGEX System!"
  echo "Selecione a opção"
  echo
  echo "1 - Configuração de card;"
  echo "2 - Configuração de MDA;"
  echo "3 - Configuração de porta;"
  echo "4 - Configuração de interface;"
  echo "5 - Configuração de VPRN;"
  echo "6 - Configuração de interface em uma VPRN;"
  echo "7 - Salvar configurações;" 

  read -n1 -p 'opcao: ' OPCAO

  echo
 
 case $OPCAO in
    1)
      echo "Informe o número do card:"
      read n_card
      echo "Informe tipo de card: "
      read t_card
      echo
      sed -i "s/<card>/$n_card/g;s/<card-type>/$t_card/g" card.txt
      cat card.txt
      sed -i "s/$n_card/<card>/g;s/$t_card/<card-type>/g" card.txt
      cat card.txt
      break
      ;;
    2)
      echo "Informe o número do card:"
      read n_card
      echo "Informe o número do MDA: "
      read n_mda
      echo "Informe o tipo de MDA: "
      read t_mda
      echo
      echo $n_card
      echo $t_card
      echo $t_mda
      break
      ;;
    3)
      echo "Informe a porta do roteador:"
      read n_port
      echo "Informe a descrição para essa porta: "
      read d_port
      echo $n_port
      echo $d_port
      break
      ;;
    4)
      echo "Informe o nome para a interface:"
      read n_interface
      echo "Informe o endereço ip para a interface: "
      read n_ip
      echo "Informe a porta da interface"
      read n_porta
      echo "Informe a descrição para a interface:"
      read d_interface
      echo
      echo $n_interface
      echo $n_ip
      echo $n_porta
      echo $d_interface
      break
      ;;
    5)echo "Informe o id para a VPRN:"
      read n_id
      echo "Informe o nome para a VPRN:"
      read n_vprn
      echo "Informe o id do cliente (use 1 por padrão):"
      read n_id_cliente
      echo "Informe o número de as:"
      read n_as
      echo "Informe o número de rd:"
      read n_rd
      echo "Informe a descrição para a VPRN:"
      read d_vprn

      echo
      echo $n_id
      echo $n_vprn
      echo $n_id_cliente
      echo $n_as
      echo $n_rd
      echo $d_vprn
      break
      ;;
    6)echo "Informe o id para a VPRN:"
      read n_id
      echo "Informe o nome para a VPRN:"
      read n_vprn
      echo "Informe o ip para a VPRN:"
      read n_ip
      echo "Informe a interface para a VPRN:"
      read n_interface
      echo "Informe a descrição para a VPRN:"
      read d_vprn

      echo
      echo $n_id       
      echo $n_vprn
      echo $n_ip
      echo $n_interface
      echo $d_vprn

      break
      ;;
    7)echo "executar admin save"
      break
      ;;
    *)
 esac
done

