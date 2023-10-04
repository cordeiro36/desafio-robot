*Settings*
Documentation    Aquivo principal do projeto de automação

Library    Browser

Resource        ${EXECDIR}/frontend/resources/pages/LoginPage.robot
Resource        ${EXECDIR}/frontend/resources/pages/MyInfoPage.robot

*Keywords*
Start Session
    New Browser          chromium       False    slowMo=00:00:01
    New Page             about:blank
    Set Viewport Size    1080           720

    Go To    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

Finish Test
    Take Screenshot