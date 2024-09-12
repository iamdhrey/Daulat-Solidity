

In Solidity getters and setters are commonly used terminologies associated with accessing and modifying state variables within a contract. Let's break down what getters and setters are and how they are used:

Getter:

- A getter is a function in a Solidity contract that allows you to retrieve the current value of a state variable.
- Getters are marked with the view or pure modifier to indicate that they don't modify the contract's state. They are used to read information from the blockchain without changing anything.

Here's a simple example:

contract Example {
    uint public myNumber; // State variable

    function getMyNumber() public view returns (uint) {
        return myNumber; // Getter function
    }
}
In this example, getMyNumber is a getter function that allows you to retrieve the current value of the myNumber state variable.


Setter:

- A setter is a function in a Solidity contract that allows you to modify the value of a state variable.
- Setters are not marked with the view or pure modifier because they change the state of the contract.

Here's an example

contract Example {
    uint public myNumber; // State variable

    function setMyNumber(uint _newNumber) public {
        myNumber = _newNumber; // Setter function
    }
}
