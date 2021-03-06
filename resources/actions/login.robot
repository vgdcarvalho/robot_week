# Dá pra adicionar essas keywords ao final do próprio login.robot

***Settings***
Documentation       Ações da página de login

***Keywords***
Open Login Page
    New Browser         chromium        true
    New Page            http://parodify.herokuapp.com/users/sign_in     

Login With
    [Arguments]     ${email_arg}    ${pass_arg}

    Fill Text                   css=#user_email     ${email_arg}
    Fill Text                   id=user_password    ${pass_arg}
    Click                       input[type=submit]

Alert Should Be 
    [Arguments]     ${alert_arg}

    Get Text                    css=.is-danger .message-body    ==      ${alert_arg}

Login
    Open Login Page
    Login With                  papito@parodify.com     pwd123
    Logout Button Should be visible