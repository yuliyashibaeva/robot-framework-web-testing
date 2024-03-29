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
Click Add To Cart Button
    Click Button    id=${ProductPageLocators.ADD_TO_CART_BUTTON_ID}

Click Update Cart Button
    Click Button    id=${ProductPageLocators.UPDATE_CART_BUTTON_ID}

Open Product Page
    Go To    ${NADIA_ELEMENTS_SHELL_PRODUCT_PAGE_LINK}

Select Color
    [Arguments]      ${color}=orange
    Click Element    id=${COLORS.${color.upper()}_COLOR_ID}

Select Size
    [Arguments]      ${size}=M
    Click Element    id=${SIZES.${size.upper()}_SIZE_ID}
