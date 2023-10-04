*** Settings ***
Documentation       Validar CPF


*** Keywords ***
POST Validar_CPF
    [Arguments]        ${form_data_CPF}

   # ${form_data_CPF}    Evaluate    {'acao': 'validar_cpf', 'txt_cpf': 'N'}

    ${response}    POST
    ...    ${base_url}
    ...    data=${form_data_CPF}
    ...    expected_status=any
    RETURN    ${response}