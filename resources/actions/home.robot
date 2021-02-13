# Daria pra colocar no fim do login.robot

***Settings***
Documentation       Ações da home page após login com sucesso

***Variables***
${logout_btn}       css=a[href$=sign_out]

***Keywords***
Logout Button Should be visible
    # The logout button element should become visible within 10s after logging in
    Wait For Elements State     ${logout_btn}   visible     10

Go to Search Page
    Click           css=a[href*=search]
    Get Text        css=h2      equal       Buscar