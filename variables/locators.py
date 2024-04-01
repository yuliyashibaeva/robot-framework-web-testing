
class CartPageLocators:
    ITEM_SIZE_CSS_SELECTOR = ".item-options > dd:nth-child(2)"
    ITEM_COLOR_CSS_SELECTOR = ".item-options > dd:nth-child(4)"
    QTY_INPUT_CSS_SELECTOR = "input.qty"
    UPDATE_CART_BUTTON_CLASS_NAME = "update"
    ITEM_EDIT_BUTTON_CLASS_NAME = "action-edit"
    ITEM_DELETE_BUTTON_CLASS_NAME = "action-delete"
    EMPTY_CART_MSG_CLASS_NAME = "cart-empty"
    EMPTY_CART_CSS_SELECTOR = "a.showcart > span.empty"


class CommonLocators:
    CART_PRODUCTS_NUMBER_CLASS_NAME = "counter-number"
    CART_COUNTER_CSS_SELECTOR = "a.showcart > span.counter"
    SUCCESS_MESSAGE_CLASS_NAME = "message-success"


class ProductPageLocators:
    SIZES_DICT = {
        "XS_SIZE_ID": "option-label-size-143-item-166",
        "S_SIZE_ID": "option-label-size-143-item-167",
        "M_SIZE_ID": "option-label-size-143-item-168",
        "L_SIZE_ID": "option-label-size-143-item-169",
        "XL_SIZE_ID": "option-label-size-143-item-170"
    }

    COLORS_DICT = {
        "BLACK_COLOR_ID": "option-label-color-93-item-49",
        "ORANGE_COLOR_ID": "option-label-color-93-item-56",
        "YELLOW_COLOR_ID": "option-label-color-93-item-60"
    }

    ADD_TO_CART_BUTTON_ID = "product-addtocart-button"
    UPDATE_CART_BUTTON_ID = "product-updatecart-button"
