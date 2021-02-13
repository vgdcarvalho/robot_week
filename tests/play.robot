***Settings***
Documentation       Testando reprodução de paródias

Resource            ../resources/base.robot

Test Setup          Login
Test Teardown       Take Screenshot

**Test Cases***
Reproduzir paródia Bug de Manhã
    [tags]      play
    Go to Search Page
    Go to Category       Sertanejo
    Go to Artist Album      Marcus e Debug
    Play Song       Bug de Manhã

    Sleep           10