
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentData {
    struct Student {
        string name;
        uint age;
        string className;
        uint rollNo;
    }

    Student[] public students;

    function addStudent(string memory n, uint a, string memory c, uint r) public {
        students.push(Student(n, a, c, r));
    }

    function getStudent(uint i) public view returns (string memory, uint, string memory, uint) {
        Student memory s = students[i];
        return (s.name, s.age, s.className, s.rollNo);
    }

    function getTotalStudents() public view returns (uint) {
        return students.length;
    }
}

