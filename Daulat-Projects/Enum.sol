// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Enum {
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled,
        Delivered
    }

    //default value is the first element listed in definition od the type
    //in this case is "pendin"

    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    //Update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }
    
    //You can update to a specific enum like this.
    function  cancel() public {
        status = Status.Cancelled;
    }

    function deliver() public {
        status = Status.Delivered;
    }

    //delete/ reset the enum to its default value 0
    function reset() public {
        delete status;
    }
}