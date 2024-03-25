*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/product_page.resource
Resource    ../resources/common.resource
Resource    ../resources/cart_page.resource

Test Setup    Open Chrome Browser And Set Implicit Wait
Test Teardown    Close Browser

*** Test Cases ***
Product Should Be Added To Cart
    [Tags]    add    smoke

    Open Product Page
    Select Size     M
    Select Color    Orange
    Click Add To Cart Button
    Success Message Should Be Present
    Products Quantity Should Be Equal To    1

Product Data In Cart Should Be Consistent
    [Tags]    add    smoke

    ${size} =     Set Variable   S
    ${color} =    Set Variable   Black

    Open Product Page
    Select Size     ${size}
    Select Color    ${color}
    Click Add To Cart Button
    Wait Until Counter Number Is Not Empty
    Open Cart Page
    Size In Cart Should Be Consistent To    ${size}
    Color In Cart Should Be Consistent To    ${color}