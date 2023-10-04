*** Settings ***
Documentation       Elementos da página Register

Resource            ${EXECDIR}/frontend/resources/base.robot


*** Variables ***
${TXT_USERNAME}     css=input[placeholder='Username']
${TXT_PASSWORD}     css=input[placeholder='Password']
${BTN_LOGIN}        css=button[type='submit']
${IMG_LOGO}         css=img[alt='client brand banner']
${LBL_MYINFO}       xpath=//span[normalize-space()='My Info']
${TXT_FIRSTNAME}    css=input[placeholder='First Name']



*** Keywords ***
Dado que acesso o site
    Wait For Elements State    ${TXT_USERNAME}    visible    10
    Take Screenshot

E realizo o login "${USERNAME}""${PASSWORD}"
    Fill Text                  ${TXT_USERNAME}    ${USERNAME}
    Fill Text                  ${TXT_PASSWORD}    ${PASSWORD}
    Click                      ${BTN_LOGIN}
    Wait For Elements State    ${IMG_LOGO}    visible    10
    Take Screenshot    


E acesso a opacao My Info
    Click    ${LBL_MYINFO}
    Wait For Elements State    ${IMG_LOGO}    visible    10
    Take Screenshot    