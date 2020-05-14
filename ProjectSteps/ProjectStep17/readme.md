### Test Status and Test Readiness Review (TRR)
Continuing with the implementation phase of the SDLC, and using Test Driven Development (TDD) leads to a pattern of recursive test-fix-test activities.

This week (5/11/2020), update your test report to show your updated (decomposed) requirements, and indicating which have been implemented, tested, passing (and when), or failing, and method of test.

### Answer the following:

- What percent of requirements are (currently) covered by test cases?
    * Test were done using the instructions on [Intertech](https://www.intertech.com/Blog/unit-test-net-entity-validation/).
    * There are total of 20 test from the original [RTM](https://github.com/gowebUSA/MSSA-Project/blob/master/TSQL/Project-Step-7/Requirement%20List%20and%20RTM.pdf) but only **8** are implementable.
    * 
- What percent of test cases are currently passing?
    * There are 7 out 8 are passing and implemented which results to **87.5%**
- What level of Validation could be expected after Verification? (Acceptance Tests?) And
    * TryValidateObject() methos is used.
    * ![Unit Test](https://github.com/gowebUSA/MSSA-Project/blob/master/ProjectSteps/ProjectStep17/files/Test.png?raw=true)
- Include itemized test list
    * Username
    * Password
    * Creation of an object (MAF, Aircraft)
    * Authentication of user's minimum fields.
- Include RTM

|  #  | Test                | Unit Testing |
|-----|---------------------|--------------|
| 1.0 | Acknowledge Consent |              | 
| 1.1 | Username            |  X           |  
| 1.2 | Pin                 | X            |  
| 1.4 | Initiate MAF        |  X           |  
| 2.0 | Authenticate User   | X            |  
| 2.1 | Username            |  X           |  
| 2.2 | Pin                 |   X          |  
| 2.4 | Create MAF          |  X           |  


### Submit:

URL for your project repository (Github) and location of test status report.

### Sprint:

5-12-2020
![5-12](https://github.com/gowebUSA/MSSA-Project/blob/master/ProjectSteps/ProjectStep17/files/5-12.png?raw=true)
5-13-2020
![5-13](https://github.com/gowebUSA/MSSA-Project/blob/master/ProjectSteps/ProjectStep17/files/5-13.png?raw=true)
5-13a-2020
![5-13a](https://github.com/gowebUSA/MSSA-Project/blob/master/ProjectSteps/ProjectStep17/files/5-13a.png?raw=true)
