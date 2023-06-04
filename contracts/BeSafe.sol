// SPDX-License-Identifier: UNKNOWN 
pragma solidity  0.5.16;

contract BeSafe {
    
    struct File{
        string fileId;
        string fileData;
    }

    mapping(string => File) public files;

    constructor() public {
        addFile("1", "default file");
    }

    function addFile(string memory _fileId, string memory _fileData) public{
        files[_fileId] = File(_fileId, _fileData);
    }
}
