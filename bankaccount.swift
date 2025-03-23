// Que : Create a class called BankAccount with following:

//properties: 
//accountNumber (String)
// balance (Double)

// Methods:
// deposite (amount:Double) - > increase the balance 
// withdraw( amount :Double ) -> Decreases the balance if sufficient funds are avilable
// displayBalance() -> prints the current balance

// Defining a class called 'BankAccount'
class BankAccount {
    
    // Properties of the class
    var accountNumber: String  // Stores the account number
    var balance: Double        // Stores the account balance

    // Initializer (Constructor) - Used to set initial values when creating an object
    init(accountNumber: String, balance: Double) {
        self.accountNumber = accountNumber  // Assign the passed account number to the class property
        self.balance = balance              // Assign the passed balance to the class property
    }

    // Method to deposit money into the account
    func deposit(amount: Double) {
        if amount > 0 {  // Ensure that the deposit amount is greater than zero
            balance += amount  // Increase the balance
            print("Deposited: \(amount). New Balance: \(balance)")  // Print the updated balance
        } else {
            print("Invalid deposit amount.")  // Show an error if amount is negative or zero
        }
    }

    // Method to withdraw money from the account
    func withdraw(amount: Double) {
        if amount > 0 && amount <= balance {  // Check if the amount is valid and sufficient balance is available
            balance -= amount  // Deduct the amount from balance
            print("Withdrawn: \(amount). Remaining Balance: \(balance)")  // Print the updated balance
        } else {
            print("Insufficient funds or invalid amount.")  // Error message if amount is invalid or exceeds balance
        }
    }

    // Method to display the current balance
    func displayBalance() {
        print("Current Balance: \(balance)")  // Print the balance
    }
}

// Example Usage:

// Creating an object of BankAccount with account number "123456789" and initial balance of 1000.0
let myAccount = BankAccount(accountNumber: "123456789", balance: 1000.0)

// Depositing 500.0 into the account
myAccount.deposit(amount: 500.0)  // Output: Deposited: 500.0. New Balance: 1500.0

// Withdrawing 200.0 from the account
myAccount.withdraw(amount: 200.0) // Output: Withdrawn: 200.0. Remaining Balance: 1300.0

// Displaying the final balance
myAccount.displayBalance()        // Output: Current Balance: 1300.0
