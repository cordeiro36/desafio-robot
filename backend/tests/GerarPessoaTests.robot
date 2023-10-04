*** Settings ***
Documentation       Enpoint para geração de pessoas

Resource            ${EXECDIR}/backend/resources/Base.robot


*** Test Cases ***
Validar Status code 200
    ${response}    POST Gerar_Pessoa

    Status Should Be    200    ${response}

Validar se o campo idade existe
    ${response}    POST Gerar_Pessoa

    Should Not Be Equal As Numbers    99    ${response.json()[0]['idade']}

Validar se o campo sexo é masculino
    ${response}    POST Gerar_Pessoa

    Should Be Equal    Masculino    ${response.json()[0]['sexo']}

Validar se o campo sexo é feminino
    ${response}    POST Gerar_Pessoa

    Should Be Equal    Feminino    ${response.json()[0]['sexo']}

Verificar se o campo CPF é válido
    ${response}    POST Gerar_Pessoa

    # Armazenando o CPF numa variável
    ${CPF}    Convert To String    ${response.json()[0]['cpf']}

    # Realizando validação do CPF armazenado através do serviço de validar CPF
    ${form_data}    Evaluate    {'acao': 'validar_cpf', 'txt_cpf': '${CPF}'}

    ${response}    POST Validar_CPF    ${form_data}

    Status Should Be    200    ${response}
