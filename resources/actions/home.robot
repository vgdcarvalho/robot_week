# Daria pra colocar no fim do login.robot

***Settings***
Documentation       Ações da home page após login com sucesso

***Keywords***
Logout Button Should be visible
    # The logout button element should become visible within 10s after logging in
    Wait For Elements State     a[href$=sign_out]   visible     10