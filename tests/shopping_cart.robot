*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/product_page.resource
Resource    ../resources/common.resource
Resource    ../resources/cart_page.resource

Test Setup    Open Browser And Set Implicit Wait
Test Teardown    Close Browser

*** Test Cases ***
Product Should Be Added To Cart
    [Tags]    add

    Open Product Page
    Select Size     M
    Select Color    Orange
    Click Add To Cart Button
    Success Message Should Be Present
    Products Quantity Should Be Equal To    1

Product Data In Cart Should Be Consistent
    [Tags]    add

    VAR     ${size} =    S
    VAR     ${color} =    Black

    Open Product Page
    Select Size     ${size}
    Select Color    ${color}
    Click Add To Cart Button
    Wait Until Counter Number Is Equal To    1
    Open Cart Page
    Size In Cart Should Be Consistent To    ${size}
    Color In Cart Should Be Consistent To    ${color}

Items Quantity Should Be Updated
    [Tags]    update

    Open Product Page
    Select Size     XS
    Select Color    Yellow
    Click Add To Cart Button
    Wait Until Counter Number Is Equal To    1
    Open Cart Page

    VAR     ${items_qty_new} =    3

    Update Items Qty In Cart    ${items_qty_new}
    Wait Until Counter Number Is Equal To     ${items_qty_new}
    Products Quantity Should Be Equal To      ${items_qty_new}

Products Options Should Be Updated
    [Tags]     update

    VAR     ${size_new} =     L
    VAR     ${color_new} =    Black

    Open Product Page
    Select Size     M
    Select Color    Orange
    Click Add To Cart Button
    Wait Until Counter Number Is Equal To    1

    Open Cart Page
    Click Item Edit Button

    Select Size     ${size_new}
    Select Color    ${color_new}
    Click Update Cart Button

    Success Message Should Be Present
    Size In Cart Should Be Consistent To        ${size_new}
    Color In Cart Should Be Consistent To       ${color_new}

Product Should Be Deleted From Shopping Cart
    [Tags]      delete

    Open Product Page
    Select Size     L
    Select Color    Yellow
    Click Add To Cart Button
    Wait Until Counter Number Is Equal To    1

    Open Cart Page
    Click Item Delete Button
    Empty Cart Message Should Be Present
    Cart Should Be Empty
