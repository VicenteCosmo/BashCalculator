# BashCalculator

Um exercício básico para auxiliar os meus colegas sobre a aula de Sistema Operativos
#
Dedicado ao **Tana Alvier**, ao **Frederick** e, sem esquecer, o **Mr. Jonny**.

## Funcionalidades
- Soma, Subtração, Multiplicação e Divisão.
- Interface via terminal com loop contínuo.

## 🧠 Curiosidade Técnica: O poder dos Parâmetros
Diferente das linguagens convencionais, este script utiliza **Parâmetros de Posição** para processar os dados. 

Em vez de depender apenas de variáveis globais, a função `Operacao` recebe os dados como se fosse um comando externo:
- `$1` representa o operador.
- `$2` e `$3` representam os operandos.

## Requisitos
```bash
echo "DEVES SABER AS BOAS PRÁTICA DE PROGRAMAÇÃO!!!"
