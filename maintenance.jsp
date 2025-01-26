<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <style>
            body {
                background-color: rgb(133, 6, 252);
                width: 100%;
                height: 100%;

            }

            .wrapper {

                display: flex;
                flex-direction: row;
                justify-content: center;
            }

            .single-box {
                background-color: rgb(243, 240, 245);
                color: rgb(19, 20, 20);
                text-align: center;
                text-decoration-line: none;
                transition: .7s;
                text-align: center;
                background-size: cover;
                background-position: center center;
                padding: 20px;
            }

            .single-box:hover {
                transform: scale(1.2);
                z-index: 2;
            }
        </style>
    </head>

    <body>

        <div class="alert alert-warning alert-dismissible fade show " role="alert">
            <strong class="d-flex justify-content-center fs-3">Maintenance Page</strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>

        <div class="wrapper" style="margin-top: 100px;">
            <c:choose>
                <c:when test="${param.Id == 2}">
                    <div class="single-box">
                        <a href="adminhomepage.jsp" class="btn-lg form-control fs-3" style="text-decoration-line:none;">Home</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="single-box">
                        <a href="userhomepage.jsp" class="btn-lg form-control fs-3" style="text-decoration-line:none;">Home</a>
                    </div>
                </c:otherwise>
            </c:choose>

            <c:choose>
                <c:when test="${param.Id == 2}">
                    <div class="single-box">
                        <a href="add.do?Id=2" class="btn-lg form-control fs-3" style="text-decoration-line:none;">AddBook/Movie</a>
            
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="single-box">
                        <a href="add.do?Id=1" class="btn-lg form-control fs-3" style="text-decoration-line:none;">AddBook/Movie</a>
            
                    </div>
                </c:otherwise>
            </c:choose>
            
            <c:choose>
                <c:when test="${param.Id == 2}">
                    <div class="single-box">
                        <a href="update.do?Id=2" class="btn-lg form-control fs-3" style="text-decoration-line:none;">UpdateBook/Movie</a>
           
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="single-box">
                        <a href="update.do?Id=1" class="btn-lg form-control fs-3" style="text-decoration-line:none;">UpdateBook/Movie</a>
           
                    </div>
                </c:otherwise>
            </c:choose>  

        </div>
        <div class="wrapper" style="margin-top: 100px;">
            <c:choose>
                <c:when test="${param.Id == 2}">
                    <div class="single-box">
                        <a href="addMembership.do?Id=2" class="btn-lg form-control fs-3" style="text-decoration-line:none;">AddMembership</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="single-box">
                        <a href="addMembership.do?Id=1" class="btn-lg form-control fs-3" style="text-decoration-line:none;">AddMembership</a>
                    </div>
                </c:otherwise>
            </c:choose>  

            
            <c:choose>
                <c:when test="${param.Id == 2}">
                    <div class="single-box">
                        <a href="userManagement.do?Id=2" class="btn-lg form-control fs-3" style="text-decoration-line:none;">UserManagement</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="single-box">
                        <a href="userManagement.do?Id=1" class="btn-lg form-control fs-3" style="text-decoration-line:none;">UserManagement</a>
                    </div>
                </c:otherwise>
            </c:choose>  

            <c:choose>
                <c:when test="${param.Id == 2}">
                    <div class="single-box">
                        <a href="updateMembership.do?Id=2" class="btn-lg form-control fs-3" style="text-decoration-line:none;">UpdateMembership</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="single-box">
                        <a href="updateMembership.do?Id=1" class="btn-lg form-control fs-3" style="text-decoration-line:none;">UpdateMembership</a>
                    </div>
                </c:otherwise>
            </c:choose>  

        </div>

</body>
</html>