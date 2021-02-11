***Settings***
Documentation       Testando reprodução de paródias

Resource            ../resources/base.robot

Test Setup          Login
Test Teardown       Take Screenshot

**Test Cases***
Reproduzir paródia Bug de Manhã
    Click           css=a[href*=search]
    Get Text        css=h2      equal       Buscar

    Click           xpath=//img[contains(@src, "sertanejo.png")]/..
    Get Text        css=h2      equal       Sertanejo

    Click           xpath=//p[contains(text(), "Marcus e Debug")]/..
    Get Text        css=h2      equal       Músicas

    # Click           xpath=//h2[contains(text(), "Bug de Manhã")]/../..//a
    Click           css=a[data-song$="bugdemanha.mp3"]
    Get Text        css=h2      equal       Músicas

    Sleep           10