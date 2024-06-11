document.getElementById('searchBtn').addEventListener('click', function() {
    const searchName = document.getElementById('searchInput').value.toLowerCase();
    const table = document.getElementById('detailsTable').getElementsByTagName('tbody')[0];
    const rows = table.getElementsByTagName('tr');

    for (let i = 0; i < rows.length; i++) {
        const cells = rows[i].getElementsByTagName('td');
        if (cells[2].innerText.toLowerCase() === searchName) {
            const details = `
                <p>S.No: ${cells[0].innerText}</p>
                <p>Register No: ${cells[1].innerText}</p>
                <p>Name: ${cells[2].innerText}</p>
                <p>Block: ${cells[3].innerText}</p>
                <p>Flat No: ${cells[4].innerText}</p>
                <p>Address: ${cells[5].innerText}</p>
                <p>Vehicle Details: ${cells[6].innerText}</p>
                <p>In Date: ${cells[7].innerText}</p>
                <p>In Time: ${cells[8].innerText}</p>
                <p>Out Date: ${cells[9].innerText}</p>
                <p>Out Time: ${cells[10].innerText}</p>
                <p>Parking Slot: ${cells[11].innerText}</p>
            `;
            document.getElementById('dialogContent').innerHTML = details;
            document.getElementById('detailsDialog').showModal();
            break;
        }
    }
});

document.getElementById('closeDialog').addEventListener('click', function() {
    document.getElementById('detailsDialog').close();
});
