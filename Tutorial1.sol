pragma solidity ^0.4.19;

contract PatientRecord {

    // ** Part 1 ** Enums **
    enum Gender { Male, Female }

    // ** Part 2 ** Structs **
    struct Patient {
        bytes32 name;
        uint age;
        Gender gender;
    }
    
    // ** Part 3 ** State and Variables *
    
    uint id; // Id for the patient record;
    Patient private patient; // The patient we are referring to
    address public recordOwner; //The address of the owner;
    
    // ** Part 4 ** Events **
    // These can be triggered by a JS script in front end
    
    event PatientNameAccesed(address sender);
    
    // ** Part 5 ** Modifiers **
    modifier onlyOwner(){
        require(msg.sender == recordOwner);
        _;
    }
    
    // ** Part 6 ** Functons **
    function PatientRecord() public {
        recordOwner = msg.sender;
    }
    
    function getPatientName() public returns (bytes32) {
        PatientNameAccesed(msg.sender);//triggering the event
        return patient.name;
    }
    
    // Function uses onlyOwner modifier, only the owner of the contract may modify it
    function setPatientName(bytes32 name) public onlyOwner {
        patient.name = name;
    }
    
}