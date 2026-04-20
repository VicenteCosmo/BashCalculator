#! /bin/bash

#Declar uma variável para terminar o ciclo
SENTINELA_FIM=0

lerNum(){
        #ler o numero e armazenar na variável num
        read -p "Entre com o número: " num

        #Devolver o valor lido
        echo $num
}

lerSinal(){

        #Ler o sinal de operação
        read -p "Entre com o sinal da operação: " sinal
}

Operacao(){

        #A variável sinal, por default, é global, logo:
        lerSinal

        #Ler ambos os números
        num1=$(lerNum)
        num2=$(lerNum)

        #Verificar o sinal e operar
        case $sinal in
                +)
                        res=$((num1 + num2))
                        ;;
                -)
                        res=$((num1 - num2))
                        ;;
                x)
                        res=$((num1 * num2))
                        ;;
                /)
                        if [ "$num2" != "0" ]; then
                                res=$((num1 / num2))
                        else
                                echo "num2 deve ser diferente de 0"
                        fi
                        ;;

                *)
                        echo "Sinal inválido"
                        ;;
        esac
        echo "Resultado:  $res"
}

main(){

        while [ "$sinal" != "0" ]; do
                res="___"
                Operacao
        done
}

# Chamada da função main
main
