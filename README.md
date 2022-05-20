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
