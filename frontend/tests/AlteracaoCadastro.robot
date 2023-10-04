*Settings*
Documentation    New User Test

Resource    ${EXECDIR}/frontend/resources/Base.robot

Suite Setup      Start Session
Test Teardown    Finish Test

Test Template    Alteracao do cadastro

*Test Cases*

Preenchimento dos campos    Admin    admin123    Rafael

*Keywords*

Alteracao do cadastro

   [Arguments]    ${USERNAME}    ${PASSWORD}    ${FIRSTNAME}
    Dado que acesso o site
    E realizo o login "${USERNAME}""${PASSWORD}"
    E acesso a opacao My Info
    E altero o nome "${FIRSTNAME}"
    E anexo um documento
    Quando clico em salvar
    Então é exibida uma mensagem de sucesso