// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
	bool public isfirst = true;
    // Note: You can declare some state variable

    function register() external returns (uint256) {
				if(isfirst) {
						isfirst = false; 
						return 1000;
				}
				return 123;
				// TODO: please add your implementaiton here
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        if(IClassroomV2(msg.sender).isEnrolled() == true){
            return 123;
        }
        return 1000;

        // TODO: please add your implementaiton here
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        if(gasleft() > 7000) {
            return 123;
        }
        uint256 a = 0;
        while(gasleft() < 7000) {
            a += 1;
        }
        return 1000;

        // TODO: please add your implementaiton here
    }
}
