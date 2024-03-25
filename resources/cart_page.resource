*** Settings ***
Documentation   Keywords needed to work with the cart

Library         SeleniumLibrary
Variables       links.py
Variables       locators.py

*** Keywords ***
Open Cart Page
    Go To    ${CART_PAGE_LINK}

Size In Cart Should Be Consistent To
    [Arguments]     ${initial_size}
    Element Text Should Be    css=${CartPageLocators.ITEM_SIZE_CSS_SELECTOR}    ${initial_size}

Color In Cart Should Be Consistent To
    [Arguments]     ${initial_color}
    Element Text Should Be    css=${CartPageLocators.ITEM_COLOR_CSS_SELECTOR}    ${initial_color}
