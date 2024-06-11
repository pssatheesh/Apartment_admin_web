<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Details</title>
    <style>
    /* styles.css */
body {
    font-family: Arial, sans-serif;
}

#detailsTable {
    width: 100%;
    border-collapse: collapse;
}

#detailsTable th, #detailsTable td {
    border: 1px solid #ddd;
    padding: 8px;
}

#detailsDialog {
    padding: 20px;
    border: 1px solid #ccc;
}
    
    </style>
</head>
<body>
    <div>
        <input type="text" id="searchInput" placeholder="Enter name">
        <button id="searchBtn">Search</button>
    </div>

    <table id="detailsTable">
        <thead>
            <tr>
                <th>S.No</th>
                <th>Register No</th>
                <th>Name</th>
                <th>Block</th>
                <th>Flat No</th>
                <th>Address</th>
                <th>Vehicle Details</th>
                <th>In Date</th>
                <th>In Time</th>
                <th>Out Date</th>
                <th>Out Time</th>
                <th>Parking Slot</th>
            </tr>
        </thead>
        <tbody>
            <%-- Example data, replace with dynamic data from the server --%>
            <tr>
                <td>1</td>
                <td>2001</td>
                <td>Anand</td>
                <td>A</td>
                <td>P-2</td>
                <td>Paramakudi</td>
                <td>TN11AM2020</td>
                <td>2024-05-04</td>
                <td>10:00:00 PM</td>
                <td>2024-05-04</td>
                <td>10:00:00 PM</td>
                <td>P-101</td>
            </tr>
            <tr>
                <td>2</td>
                <td>2003</td>
                <td>Surya</td>
                <td>A</td>
                <td>P-3</td>
                <td>Chennai</td>
                <td>TN11AX2333</td>
                <td>2024-05-05</td>
                <td>9:25:00 AM</td>
                <td>2024-05-11</td>
                <td>01:04:19 PM</td>
                <td>null</td>
            </tr>
            <tr>
                <td>5</td>
                <td>2004</td>
                <td>Balaji</td>
                <td>B</td>
                <td>P-4</td>
                <td>Ottanchatiram</td>
                <td>TN10BC2435</td>
                <td>2024-05-11</td>
                <td>12:50:37 PM</td>
                <td>2024-05-11</td>
                <td>10:32:57 AM</td>
                <td>P-103</td>
            </tr>
        </tbody>
    </table>

    <dialog id="detailsDialog">
        <div id="dialogContent"></div>
        <button id="closeDialog">Close</button>
    </dialog>

    <script src="script.js"></script>
</body>
</html>
