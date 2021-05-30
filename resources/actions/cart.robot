* Settings *
Documentation       Ações de funcionalidade do carrinho de compras

* Keywords *
Add To Cart  
    [Arguments]     ${name}
    
    Click       xpath=//span[text()="${name}"]/..//a[@class="add-to-cart"]

Should Add To Cart
    [Arguments]     ${name}
     
     Wait For Elements State     css=#cart tr >> text=${name}         visible     ${DEFAULT_TIMEOUT}

Total Cart Should Be
    [Arguments]     ${total}
    
    Log     
    Get Text        xpath=//th[text()="Total:"]/..//td      contains    ${total}