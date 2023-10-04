*** Settings ***
Documentation       Implementação da chamada para gerar pessoa


*** Keywords ***
POST Gerar_Pessoa

    ${form_data_gerarpessoa}    Evaluate    {'acao': 'gerar_pessoa', 'pontuacao': 'N', 'sexo': 'H', 'txt_qtde': '1'}

    ${response}    POST
    ...    ${base_url}
    ...    data=${form_data_gerarpessoa}
    ...    expected_status=any
    RETURN    ${response}
