*** Settings ***
Documentation   Keywords needed to work with the cart

Library         SeleniumLibrary
Variables       links.py
Variables       locators.py

*** Keywords ***
Open Cart Page
    Go To    ${CART_PAGE_LINK}

Size In Cart Should Be Consistent To
    [Arguments]     ${size}
    Element Text Should Be    css=${CartPageLocators.ITEM_SIZE_CSS_SELECTOR}    ${size}

Color In Cart Should Be Consistent To
    [Arguments]     ${color}
    Element Text Should Be    css=${CartPageLocators.ITEM_COLOR_CSS_SELECTOR}    ${color}

Update Items Qty In Cart
    [Arguments]     ${items_qty_new}
    Clear Element Text    css=${CartPageLocators.QTY_INPUT_CSS_SELECTOR}
    Input Text            css=${CartPageLocators.QTY_INPUT_CSS_SELECTOR}    ${items_qty_new}
    Click Button          class=${CartPageLocators.UPDATE_CART_BUTTON_CLASS_NAME}

Click Item Edit Button
    Click Element      class=${CartPageLocators.ITEM_EDIT_BUTTON_CLASS_NAME}

Click Item Delete Button
    Click Element    class=${CartPageLocators.ITEM_DELETE_BUTTON_CLASS_NAME}

Empty Cart Message Should Be Present
    Page Should Contain Element     class=${CartPageLocators.EMPTY_CART_MSG_CLASS_NAME}

Cart Should Be Empty
    Page Should Contain Element    css=${CartPageLocators.EMPTY_CART_CSS_SELECTOR}