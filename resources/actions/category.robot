**Settings***
Documentation       Ações da página de categorias

***Keywords***
Go to Artist Album
    [Arguments]     ${artist}
    Click           xpath=//p[contains(text(), "${artist}")]/..
    Wait For Elements State        xpath=//h2[contains(text(), "Músicas")]      visible     10