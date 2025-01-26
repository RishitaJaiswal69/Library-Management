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
   

    <div class="row justify-content-center" style="padding-bottom: 50px;">
        <div class="col-4 mt-5 border border-secondary rounded p-5 pb-4" style="background-color:black">
            <form action="userManagement.do" method="post">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">
                        New User
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                    <label class="form-check-label" for="flexRadioDefault2">
                        Existing User
                    </label>
                </div>
                <div class="mb-4">
                    <label for="inputtext4" class="form-label">Name<sup class="text-danger">*</sup></label>
                    <input type="text" class="form-control" id="inputtext4" name="uname">

                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox"  id="flexCheckChecked1" name="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                        Active
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" name="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckChecked">
                        Admin
                    </label>
                </div>

                <div class="row mt-5">
                    <div class="col-6">
                        <button type="button" class="btn btn-primary" 
                        onclick="myFunction()">Cancel</button>
                    </div>
                    <div class="col-6 text-end">
                        <button type="submit" class="btn btn-primary">Confirm</button>
                    </div>
                </div>
            </form>
        </div>
    </div>



    <script>
          let flexRadioDefault1=document.getElementById("flexRadioDefault1");
          let flexRadioDefault2=document.getElementById("flexRadioDefault2");
          let inputtext4 =document.getElementById("inputtext4");
          let flexCheckChecked1=document.getElementById("flexCheckChecked1");
          let flexCheckChecked=document.getElementById("flexCheckChecked");


          function myFunction(){
            flexRadioDefault1.selected=false;
            flexRadioDefault2.selected=false;
            inputtext4.value=" ";
            flexCheckChecked1.checked=false;
            flexCheckChecked.checked=false;

          }


    </script>
</body>
</html>