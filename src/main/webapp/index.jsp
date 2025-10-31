<!DOCTYPE html>
<html>
<head>
    <title>Registration Form</title>
	<style>
	body{
		background-color:lightyellow;
		padding: 20px;
	}
	table,th,td{
		border: 1px solid;
	}
	th{
		font-family: Lucida Console, sans-serif; 
	}
	input[type="text"],
        textarea {
            padding: 8px;
            border: 1px solid lightgray;
            border-radius: 6px;
            font-size: 14px;
        }
	</style>
    <script>
        function validateForm(event) {
            event.preventDefault(); // Prevents the form from actually submitting
            
            let name = document.getElementById("name").value;
            let regno = document.getElementById("regno").value;
            let cno = document.getElementById("cno").value;
            let address = document.getElementById("address").value;
            let ema = document.getElementById("ema").value;
            let hob = document.getElementById("hob").value;
            
            let regnoPattern = /Y22ACS\d{3}/;
            let cnoPattern = /^[0-9]{10}$/;
            let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            
            if (!regnoPattern.test(regno)) {
                alert("Invalid Registration Number. Only letters and numbers allowed.");
                return;
            }
            if (!cnoPattern.test(cno)) {
                alert("Invalid Contact Number. Must be exactly 10 digits.");
                return;
            }
            if (!emailPattern.test(ema)) {
                alert("Invalid Email Format.");
                return;
            }
            
            alert("Form submitted successfully!\n\n" +
                  "Name: " + name + "\n" +
                  "Reg No: " + regno + "\n" +
                  "Contact No: " + cno + "\n" +
                  "Address: " + address + "\n" +
                  "E-mail: " + ema + "\n" +
                  "Hobbies: " + hob);
        }
    </script>
</head>
<body>
	<center>
    <form onsubmit="validateForm(event)">
        <table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<th colspan="2" style="text-align:center;font-size:20px;">Registration Form</th>
			</tr>
            <tr>
                <td><label for="name">Name:</label></td>
                <td><input type="text" id="name" name="name" placeholder="Enter your name" required></td>
            </tr>
            <tr>
                <td><label for="regno">Reg No:</label></td>
                <td><input type="text" id="regno" name="regno" placeholder="Enter your Reg No" required></td>
            </tr>
            <tr>
                <td><label for="cno">Contact No:</label></td>
                <td><input type="text" id="cno" name="cno" placeholder="Enter your Contact No" required></td>
            </tr>
            <tr>
                <td><label for="address">Address:</label></td>
                <td><textarea id="address" name="address" rows="5" cols="40" placeholder="Enter your address" required></textarea></td>
            </tr>
            <tr>
                <td><label for="ema">E-mail:</label></td>
                <td><input type="text" id="ema" name="ema" placeholder="Enter your email" required></td>
            </tr>
            <tr>
                <td><label for="hob">Hobbies:</label></td>
                <td><input type="text" id="hob" name="hob" placeholder="Enter your hobbies" required></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <input type="submit" value="Submit">
                </td>
            </tr>
        </table>
    </form>
	</center>
</body>
</html>
