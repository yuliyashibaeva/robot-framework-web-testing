# Web Automation Project with Robot Framework

This is a pet project to polish up my test automation skills
using [Robot Framework](https://robotframework.org/). 
These are the same tests that I had developed previously using other technologies: 
[Selenium Project](https://github.com/yuliyashibaeva/python-selenium-online-store). 
While learning Robot Framework, I implemented the same test scenarios to learn by doing 
and demonstrate that I can solve the same task in different ways.

**NOTE:** All comments and advice are very welcome. Please, be polite.

### Object for automation

As an object for automation I chose a demo online store: 
https://magento.softwaretestingboard.com/.

## 🛠️ Tech Stack

1. Automation Framework - `Robot Framework`
2. Library to handle a browser - `SeleniumLibrary`

## 🚀 How to run the tests

1. Clone the repository.
2. Go to the project directory.
3. Install dependencies using the command:
```shell
pip install -r requirements.txt
```
4. Run tests in the console using the command:<br>
```shell
robot .\tests\
```

### 🌐 Specify a browser

You can choose a browser for use with the following command:<br>
```shell
robot --variables browser:firefox .\tests\
```

This command will run tests using Firefox browser. 
Possible options for the "browser" variable can be found 
[here](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open%20Browser)
(official SeleniumLibrary documentation). 
The default browser is Chrome.

### 🏷️ Specify tests to run

I set the following tags for my tests:

* **add**: tests that check whether an item has been added to the cart;
* **update**: tests that check whether an item in the cart has been updated;
* **delete**: test that checks whether an item has been deleted from the cart.

Tests to run can be specified using these tags with the command:
```shell
robot -i update .\tests\
```

## 📝 Test Cases
Test scenarios in the text format can be found here: 
[shopping cart tests](https://github.com/yuliyashibaeva/python-selenium-online-store/blob/main/TestCases.md#shopping-cart-tests-from-the-test_shopping_cartpy-file).