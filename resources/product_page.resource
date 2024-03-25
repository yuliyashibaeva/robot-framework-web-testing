*** Settings ***
Documentation   Keywords needed to work with product page

Library         SeleniumLibrary
Library         String
Variables       links.py
Variables       locators.py

*** Variables ***
&{SIZES}    &{ProductPageLocators.SIZES_DICT}
&{COLORS}   &{ProductPageLocators.COLORS_DICT}

*** Keywords ***
Open Product Page
    Go To    ${NADIA_ELEMENTS_SHELL_PRODUCT_PAGE_LINK}

Select Size
    [Arguments]      ${size}=M
    ${size} =   Convert To Upper Case    ${size}
    Click Element    id=${SIZES.${size}_SIZE_ID}

Select Color
    [Arguments]      ${color}=orange
    ${color} =  Convert To Upper Case    ${color}
    Click Element    id=${COLORS.${color}_COLOR_ID}

Click Add To Cart Button
    Click Button    id=${ProductPageLocators.ADD_TO_CART_BUTTON_ID}
