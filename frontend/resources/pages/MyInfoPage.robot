*** Settings ***
Documentation       Elementos da página My Page

Resource            ${EXECDIR}/frontend/resources/base.robot


*** Variables ***
${TXT_FIRSTNAME}                css=input[placeholder='First Name']
${BTN_SAVE_PERSONALDETAILS}     xpath=(//button[@type='submit'][normalize-space()='Save'])[1]
${BTN_SAVE_UPLOAD}              xpath=(//button[@type='submit'][normalize-space()='Save'])[3]
${BTN_ADD}                      xpath=//button[normalize-space()='Add']
${BTN_UPLOAD}                   xpath=//div[@class='oxd-file-button']
${FILE}                         ${EXECDIR}\\frontend\\CNH.jpg
${TOAST_SUCCESS}                xpath=//div[@id='oxd-toaster_1']


*** Keywords ***
E altero o nome "${FIRSTNAME}"
    Clear Text    ${TXT_FIRSTNAME}
    Fill Text     ${TXT_FIRSTNAME}    ${FIRSTNAME}


E anexo um documento

    Click                          ${BTN_ADD}
    ${PROMISSE}    Promise To Upload File    ${FILE}
    Click                          ${BTN_UPLOAD}



Quando clico em salvar

    Click            ${BTN_SAVE_PERSONALDETAILS}
    Click            ${BTN_SAVE_UPLOAD}


Então é exibida uma mensagem de sucesso

    Wait For Elements State    ${TOAST_SUCCESS}   visible    10