pragma solidity ^0.5.0;

contract EventList {
  uint public eventCount = 0;

  struct Event {
    uint id;
    string name;
    string dateTime;
    string description;
    bool paymentType;
    uint price;
    address walletAddr;
  }

  mapping(uint => Event) public events;

  function createEvent(string memory name, string memory dateTime, string memory description, bool paymentType, uint price, address walletAddr) public {
    eventCount ++;
    events[eventCount] = Event(eventCount, name, dateTime, description, paymentType, price, walletAddr);
  }

  constructor() public {

  }
}