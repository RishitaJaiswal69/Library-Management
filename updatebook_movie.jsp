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

    <div>
        <c:choose>
            <c:when test="${param.Id == 1}">
                <div class="col-8">
                    <div class="alert alert-primary" style="margin-left:450px;font-family:'Arial';font-size:20px"
                        role="alert">
                        As a normal user you're not allowed to update details.
                    </div>
                </div>
            </c:when>
            <c:otherwise>

            </c:otherwise>
        </c:choose>
    </div>
    
    <div class="row justify-content-center" style="padding-bottom: 50px;">
        <div class="col-4 mt-5 border border-secondary rounded p-5 pb-4" style="background-color:black">
            <form action="update.do" method="post">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="book" value="book">
                    <label class="form-check-label" for="flexRadioDefault1">Book</label>
                </div>

                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="movie" value="movie">
                    <label class="form-check-label" for="flexRadioDefault2">Movie</label>
                </div>

                <div class="mb-4">
                    <label for="inputtext" class="form-label">Name of book/movie<sup
                            class="text-danger">*</sup></label>
                    <input type="text" class="form-control" id="inputtext" name="bname">
                    <span>200 words limit</span>
                </div>

                <div class="mb-4">
                    <label for="serial" class="form-label">Serial No.<sup
                            class="text-danger">*</sup></label>
                    <input type="text" class="form-control" id="serial" name="no">
                </div>

                <div class="mb-4">
                    <label for="inputDate" class="form-label">Date<sup
                            class="text-danger">*</sup></label>
                    <input type="date" class="form-control" id="inputDate" name="date">
                </div>

                <div class="mb-4">
                    <label for="serial" class="form-label">Status<sup
                            class="text-danger">*</sup></label>
                    <select class="form-select" id="opt" name="status" aria-label="Default select example">
                        <option>None</option>
                        <option value="1">Return</option>
                        <option value="2">Issue</option>
                    </select>
                    
                </div>

                
                <div class="row mt-5">
                    <div class="col-6">
                        <button type="button" class="btn btn-primary" id="cal"
                            onclick="myFunction()">Cancel</button>
                    </div>

                    <c:choose>
                        <c:when test="${param.Id == 1}">
                            
                        </c:when>
                        <c:otherwise>
                            <div class="col-6 text-end">
                                <button type="submit" class="btn btn-primary" id="con">
                                    Confirm</button>
                            </div>
                        </c:otherwise>
                    </c:choose>
                    
                </div>
            </form>
        </div>
    </div>

    <script>
        let book = document.getElementById("book");
        let movie = document.getElementById("movie");
        let name = document.getElementById("inputtext");
        let serial =document.getElementById("serial");
        let date = document.getElementById("inputDate");
        let option =document.getElementById("opt");
        

        let cal = document.getElementById("cal");
        let con = document.getElementById("con");


        function myFunction() {
            name.value = " ";
            serial.value =" ";
            movie.checked = false;
            book.checked = false;
            date.value = " ";
            option.value=" ";

        }


    </script>
   
</body>
</html>