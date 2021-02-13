***Settings***
Documentation       Ações da página de album

***Keywords***
Play Song
    [Arguments]     ${song}
    Click           xpath=//h2[contains(text(), "${song}")]/../..//a
    #Click           css=a[data-song$="${song}"]
    Get Text        css=h2      equal       Músicas
