# EthSEQ

EthSEQ é um script em R desenvolvido para realizar análise de ancestralidade em dados de genoma completo. Este script foi customizado dentro do projeto OncoGenSUS como parte da etapa de análise dos dados do projeto. O script contempla a instalação de bibliotecas necessárias para a análises.

A versão atual do EthSEQ gerencia apenas arquivos VCF com o seguinte formato:
- A coluna FORMAT deve conter "GT".
- Apenas os genótipos 0/0, 0/1, 1/1 e ./. são permitidos.
- Apenas posições com uma única base de referência e uma única base alternativa são aceitas.
- IDs duplicados não são permitidos (ou seja, nenhuma variante múltipla com ID igual a ".").
- Nomes de amostras duplicados não são permitidos.
- Posições duplicadas não são permitidas.
