# Bank tech test

As a part of makers learning experience, i will be working on this challenge to create a working banking app. 

I will be practicing my OO design and TDD skills.

I am working on this alone. 

## Specification

### User Requirements

* User should be able to interact with your code via a REPL like IRB or Node.  (User don't need a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### User needs
```
As a customer
So that I can save my money
I want to be able to deposit money into my bank account
```
```
As a customer
So that I can spend my money
I want to be able to withdraw money from my bank account
```
```
As a customer
So that I can review my spending
I want to be able to print a bank statement
```
```
As a customer
So that I can review my spending in detail
I want my bank statment to include : transaction date, credit or debit amount and balance after every transaction 
```

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023  
**And** a deposit of 2000 on 13-01-2023  
**And** a withdrawal of 500 on 14-01-2023  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```
### Edge case
```
As a customer
So that I don't get into debit
I want not to be able to withdraw more than balance in bank account
```
### Demo
![Screenshot 2022-05-23 at 14 28 49](https://user-images.githubusercontent.com/99490100/169834883-e856fd80-b2fb-4b7c-b869-3b93dbd662ba.png)

### Test coverage
100% test coverage 

![Screenshot 2022-05-23 at 14 34 38](https://user-images.githubusercontent.com/99490100/169835007-44d8b56a-19d6-4440-9daf-e982792eb82a.png)

### Code quality
I have user Rubocop for checking code. The code is fully complaint by rubocop standards 

![Screenshot 2022-05-23 at 14 34 58](https://user-images.githubusercontent.com/99490100/169835995-6fb76dfc-598f-4ab5-8593-c051f6938278.png)

### Installing

Clone this repo https://github.com/baljitrakhra/bank-tech-test
```
bundle install
```
This application runs on irb. In your computer's terminal run the following command and press return 

```
irb
```
Load the account file 

```
load './lib/account.rb'
```
Create a new account 

```
account = Account.new
```
To deposit in the account, use the following command :

```
account.deposit_money(10)
```
To withdrwa from the account, use the following command : 
```
account.withdraw_money(5)
```
To print a statment, use the following command: 

```
account.print_statment
```
### Testing
To run a suite of test, use the following command :
```
rspec
```
To run the code quality test, use the following command :

```
rubocop
```

