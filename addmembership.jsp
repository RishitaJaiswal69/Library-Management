<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <style>
        body {
            background-image: url(static/media/image/1.jfif);
            color: rgb(243, 242, 247);
            height: 200px;
            background-repeat: no-repeat;
            background-size: cover;
            background-position: 0px -140px;
        }
    </style>
</head>

<body>

    <div>
        <c:choose>
            <c:when test="${param.Id == 2}">
                <div class="single-box">
                    <a href="adminhomepage.jsp?Id=2"><button type="button" class="btn btn-light btn-lg">Home</button></a>
                    <a href="signout.do"><button type="button" class="btn btn-light btn-lg">Logout</button></a>
                </div>
            </c:when>
            <c:otherwise>
                <div class="single-box">
                    <a href="userhomepage.jsp?Id=1"><button type="button" class="btn btn-light btn-lg">Home</button></a>
                    <a href="signout.do"><button type="button" class="btn btn-light btn-lg">Logout</button></a>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
    

    <form action="addMembership.do" method="post">
        <div class="row justify-content-center border-secondary rounded bg-dark" style="margin-top: 50px;width: 80%;margin-left: 130px;">
            <div class="col-5">
                <div class="mb-3">
                    <label for="inputtext4" class="form-label">First Name<sup class="text-danger">*</sup></label>
                    <input type="text" class="form-control" id="inputtext4" required  name="fname">
                </div>

                <div class="mb-3">
                    <label for="inputtext3" class="form-label">Last Name<sup class="text-danger">*</sup></label>
                    <input type="text" class="form-control" id="inputtext3" required  name="lname">
                </div>

                <div class="mb-3">
                    <label for="inputtext2" class="form-label">Contact Name<sup class="text-danger">*</sup></label>
                    <input type="text" class="form-control" id="inputtext2" required  name="contact">
                </div>

                <div class="mb-3">
                    <label for="inputtext1" class="form-label">Contact Address<sup class="text-danger">*</sup></label>
                    <input type="text" class="form-control" id="inputtext1" required   name="add">
                </div>

                <div class="mb-3">
                    <button type="button"  class="btn btn-primary" onclick="myFunction()">Cancel</button>
                    <button type="submit"  class="btn btn-primary">Confirm</button>
                </div>
            </div>

            <div class="col-5">
                <div class="mb-3">
                    <label for="inputAdadhar" class="form-label">Adadhar Card No<sup class="text-danger">*</sup></label>
                    <input type="number" class="form-control" id="inputAdadhar" required  name="adadhar">

                </div>

                <div class="mb-3">
                    <label for="inputDate" class="form-label">Start Date<sup class="text-danger">*</sup></label>
                    <input type="date" class="form-control" id="inputDate" required name="start">

                </div>
                <div class="mb-3">
                    <label for="inputDate1" class="form-label">End Date<sup class="text-danger">*</sup></label>
                    <input type="date" class="form-control" id="inputDate1"  required name="end">

                </div>

                
                <label class="form-label">Membership</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">
                        6 months
                    </label>
                    
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                    <label class="form-check-label" for="flexRadioDefault2">
                        1 year
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
                    <label class="form-check-label" for="flexRadioDefault3">
                        2 years
                    </label>
                </div>
                
            </div>
            
        </div>
    </form>
          

       <script>
            let inputtext4 =document.getElementById("inputtext4");
            let inputtext3 =document.getElementById("inputtext3");
            let inputtext2 =document.getElementById("inputtext2");
            let inputtext1 =document.getElementById("inputtext1");

            let inputAdadhar =document.getElementById("inputAdadhar");
            let inputDate =document.getElementById("inputDate");
            let inputDate1 =document.getElementById("inputDate1");
            let inputDate2 =document.getElementById("inputDate2");
            let flexRadioDefault1 =document.getElementById("flexRadioDefault1");
            let flexRadioDefault2 =document.getElementById("flexRadioDefault2");
            let flexRadioDefault3 =document.getElementById("flexRadioDefault3");

            
            function myFunction() {
                inputtext4.value=" ";
                inputtext3.value="  ";
                inputtext2.value=" ";
                inputtext1.value=" ";
                inputAdadhar.value=" ";
                inputDate.value=" ";
                inputDate1.value=" ";
                inputDate2.value=" ";
                flexRadioDefault1.checked=false;
                flexRadioDefault2.checked=false;
                flexRadioDefault3.checked=false;
            }

           
       </script>
</body>
</html>