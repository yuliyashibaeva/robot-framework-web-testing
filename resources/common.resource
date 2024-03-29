*** Settings ***
Documentation   Keywords needed to work with common elements

Library         SeleniumLibrary
Variables       locators.py

*** Keywords ***
Open Chrome Browser And Set Implicit Wait
    [Arguments]     ${time}=${10}
    Open Browser    browser=chrome
    Set Browser Implicit Wait    ${time}

Success Message Should Be Present
    Page Should Contain Element    class=${CommonLocators.SUCCESS_MESSAGE_CLASS_NAME}

Products Quantity Should Be Equal To
    [Arguments]     ${items_qty}
    ${items_qty_cart} =    Get Items Qty In Cart
    Should Be Equal As Integers    ${items_qty}    ${items_qty_cart}    The number of products isn't correct. Expected: ${items_qty}, received: ${items_qty_cart}

Get Items Qty In Cart
    ${items_qty_cart} =   Get Text    class=${CommonLocators.CART_PRODUCTS_NUMBER_CLASS_NAME}
    RETURN  ${items_qty_cart}

Wait Until Counter Number Is Equal To
    [Arguments]     ${value}
    Wait Until Element Contains    css=${CommonLocators.CART_COUNTER_CSS_SELECTOR}      ${value}
