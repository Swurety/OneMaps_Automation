README

## Program Purpose
This automation program is designed to facilitate testing of the OneMaps dashboard using Robot Framework. It solves the problem of manual testing by providing efficient automation to retrieve data from a GET API and conduct functional tests on web elements in the OneMaps dashboard.

## Key Features
- Retrieve Data from GET API: Simplifies the testing process by fetching data from a GET API for use in test cases.
- OneMaps Dashboard Functional Testing: Ensures that core elements of the OneMaps dashboard function as expected.
- Integration with Other Tools: Utilizes Robot Framework alongside libraries and extensions such as robotframework-requests, robotframework-seleniumlibrary, and robotframework-jsonlibrary.

## Prerequisites
1. GET API Access: Required for fetching test data.
2. OneMaps Dashboard Testing: Ensures that the core functionality is displayed correctly on the website.
3. Verify Core Buttons: Ensures basic buttons are displayed on the website.
4. OneMaps Web Functional Testing: Conducts functional tests on the OneMaps website.

## Instalasi
1. Python: Download and install from [Python.org](https://www.python.org/downloads/).
2. Anaconda: Download and install from [Anaconda.com](https://www.anaconda.com/download).
3. Install Dependencies: After installing Python, run the following commands in the Command Prompt:
   ```bash
   pip install collection
   pip install jsons
   pip install os-sys
   pip install robotframework-requests
   pip install requests
   pip install robotframework-seleniumlibrary
   pip install screenshot
   pip install robotframework-excellib
   pip install robotframework-jsonlibrary
   pip install selenium
4. Browser driver
5. VSCode Extensions: Install Python and Robot Framework Support extensions from the VSCode marketplace.

## Usage
1. Python: Download from Python.org.
2. Pip Install: Jalankan perintah pip install di Command Prompt setelah Python terinstal.
3. VSCode Extensions: Install Python and Robot Framework Support extensions directly from within VSCode.

## Running Tests
1. Ensure all dependencies and extensions are installed.
2. Run the Robot Framework script via Command Prompt or the VSCode terminal using the following command:
	robot [path script].robot
3. View the test results in the generated report after execution.

## Example Use Case
A typical use case involves creating automation directly in a text editor using Robot Framework to test functionality within the OneMaps dashboard.

## Error Handling
1. Installation Errors: Ensure all dependencies are correctly installed, and check for compatible versions.
2. Test Issues: Verify the Robot Framework script for syntax errors or incorrect configurations.
3. API Errors: Check the API endpoint and the parameters used in testing.

## Contribution
If you wish to contribute to this project, feel free to fork this repository and submit a pull request with your changes or improvements. Please follow the existing contribution guidelines.

## Additional Documentation
For further information about Robot Framework, visit the Robot Framework Documentation. For usage guidelines of related libraries, refer to their respective documentation such as robotframework-requests and robotframework-seleniumlibrary..

## License
This program is licensed under the MIT License. You are free to use, modify, and distribute this software under the terms outlined in the license.
