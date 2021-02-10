***Settings***
Documentation   Testes da página login
Library         Browser

***Test Cases***
Login get text - New Page
    New Page    http://parodify.herokuapp.com/users/sign_in
    Get Text    label[for=user_email]   contains    Email

Login get text - Open Browswer
    Open Browser    http://parodify.herokuapp.com/users/sign_in     chromium
    Get Text        label[for=user_email]   contains    Email

Login com sucesso
    Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
   
    Fill Text                   css=#user_email     papito@parodify.com
    Fill Text                   id=user_password    pwd123
    Click                       input[type=submit]

    Wait For Elements State     a[href$=sign_out]   visible     10