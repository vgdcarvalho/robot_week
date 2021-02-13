***Settings***
Documentation       Ações da página de busca

**Keywords***
Go to Category
    [Arguments]     ${category}
    Click           xpath=//img[contains(@src, "sertanejo.png")]/..
    Get Text        css=h2      equal       ${category}
