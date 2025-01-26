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
    
    <form action="updateMembership.do" method="post">
        <div class="row justify-content-center" style="padding-bottom: 50px;">
            <div class="col-4 mt-5 border border-secondary rounded p-5 pb-4" style="background-color:black">
                <div class="mb-3">
                    <label for="inputtext4" class="form-label">Membership No<sup class="text-danger">*</sup></label>
                    <input type="number" class="form-control" id="inputtext4" required  name="member" >
                </div>

                <div class="mb-3">
                    <label for="inputDate" class="form-label">Start Date<sup class="text-danger">*</sup></label>
                    <input type="date" class="form-control" id="inputDate" required name="start">
                </div>

                <div class="mb-3">
                    <label for="inputDate1" class="form-label">End Date<sup class="text-danger">*</sup></label>
                    <input type="date" class="form-control" id="inputDate1" required name="end">
                </div>

                <label class="form-label">Membership Extn<sup class="text-danger">*</sup></label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">6 months</label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault4">
                    <label class="form-check-label" for="flexRadioDefault4">1 year</label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                    <label class="form-check-label" for="flexRadioDefault2">2 years</label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
                    <label class="form-check-label" for="flexRadioDefault3">Remove</label>
                </div>

                <div class="mb-3">
                    <button type="submit" class="btn btn-primary">Confirm</button>
                    <button type="button" class="btn btn-primary" onclick="myFunction()" >Cancel</button>
                </div>

            </div>
            
        </div>
    </form>
      
    <script>
        let membership =document.getElementById("inputtext4");
        let start =document.getElementById("inputDate");
        let end =document.getElementById("inputDate1");
        let flexRadioDefault1=document.getElementById("flexRadioDefault1");
        let flexRadioDefault2 =document.getElementById("flexRadioDefault2");
        let flexRadioDefault3 =document.getElementById("flexRadioDefault3");
        let flexRadioDefault4 =document.getElementById("flexRadioDefault4");

        function myFunction(){
            membership.value=" ";
            start.value=" ";
            end.value=" ";
            flexRadioDefault1.checked=false;
            flexRadioDefault2.checked=false;
            flexRadioDefault3.checked=false;
            flexRadioDefault4.checked=false;
        }



    </script>
       

</body>

</html>