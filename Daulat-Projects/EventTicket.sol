// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract EventTicket{

    uint public numberOfTickets;
    uint public ticketPrice;
    uint public totalAmount;
    uint public startAt;
    uint public  endAt;
    uint public timerange;
    string public message = "Buy your first Event Ticket";

    constructor(uint _ticketPrice){
        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timerange = (endAt - startAt) / 60 / 60 / 24;
    }

    function buyTicket(uint _value) public returns(uint ticketId){
        numberOfTickets++;
        totalAmount += _value;
        ticketId = numberOfTickets;

    }

    function getAmount() public view returns(uint){
        return totalAmount;
    }
}