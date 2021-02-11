***Settings***
Documentation   Testes da página login

Resource        ../resources/base.robot

# Gancho pra tirar screenshot sempre q acabar um teste
Test Teardown   Take Screenshot

***Test Cases***

# Testando Framework
Login get text - New Page
    New Page    http://parodify.herokuapp.com/users/sign_in
    Get Text    label[for=user_email]   contains    Email

Login get text - Open Browswer
    Open Browser    http://parodify.herokuapp.com/users/sign_in     chromium
    Get Text        label[for=user_email]   contains    Email


# Inicio das validações verdadeiras
Login com sucesso - Open Browser
    Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
   
    Fill Text                   css=#user_email     papito@parodify.com
    Fill Text                   id=user_password    pwd123
    Click                       input[type=submit]

    Wait For Elements State     a[href$=sign_out]   visible     10

Login com sucesso - New Page
    New Page                http://parodify.herokuapp.com/users/sign_in
   
    Fill Text                   css=#user_email     papito@parodify.com
    Fill Text                   id=user_password    pwd123
    Click                       input[type=submit]

    Wait For Elements State     a[href$=sign_out]   visible     10

Login incorreto
    Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
   
    Fill Text                   css=#user_email     papito@parodify.com
    Fill Text                   id=user_password    123456
    Click                       input[type=submit]

    Get Text                    css=.is-danger .message-body    ==      Opps! Dados de acesso incorretos!

Email incorreto
    Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
   
    Fill Text                   css=#user_email     test@test.com
    Fill Text                   id=user_password    123456
    Click                       input[type=submit]

    Get Text                    css=.is-danger .message-body    ==      Opps! Dados de acesso incorretos!

Email não informado
    Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
   
    Fill Text                   css=#user_email     ${EMPTY}
    Fill Text                   id=user_password    123456
    Click                       input[type=submit]

    Get Text                    css=.is-danger .message-body    ==      Opps! Dados de acesso incorretos!

Senha não informada
    Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
   
    Fill Text                   css=#user_email     papito@parodify.com
    Fill Text                   id=user_password    ${EMPTY}
    Click                       input[type=submit]

    Get Text                    css=.is-danger .message-body    ==      Opps! Dados de acesso incorretos!

Email e senha não informados
    Open Browser                http://parodify.herokuapp.com/users/sign_in     chromium
   
    Fill Text                   css=#user_email     ${EMPTY}
    Fill Text                   id=user_password    ${EMPTY}
    Click                       input[type=submit]

    Get Text                    css=.is-danger .message-body    ==      Opps! Dados de acesso incorretos!


# Usando novas keywords
Login com sucesso - New Keyword
    [tags]      smoke
    Open Login Page
    Login With                  papito@parodify.com     pwd123
    Logout Button Should be visible

Login incorreto - New Keyword
    Open Login Page
    Login With                  papito@parodify.com     123456
    Alert Should Be             Opps! Dados de acesso incorretos!

Email incorreto - New Keyword
    Open Login Page
    Login With                  test@test.com     123456
    Alert Should Be             Opps! Dados de acesso incorretos!

Email não informado - New Keyword
    Open Login Page
    Login With                  ${EMPTY}     123456
    Alert Should Be              Opps! Dados de acesso incorretos!

Senha não informada - New Keyword
    Open Login Page
    Login With                  papito@parodify.com     ${EMPTY}
    Alert Should Be             Opps! Dados de acesso incorretos!

Email e senha não informados - New Keyword
    Open Login Page
    Login With                  ${EMPTY}     ${EMPTY}
    Alert Should Be             Opps! Dados de acesso incorretos!