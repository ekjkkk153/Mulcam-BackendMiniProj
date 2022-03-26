<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Theater</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/styles.css" />
    <style>
        .maincontent {
            width: 800px;
            margin: 10px auto 40px auto;
        }

        .card {
            float: left;
        }

        .selectFindTypeIcon {
            width: 200px;
            text-align: center;
            color: gray
        }

        th>a {
            text-decoration-line: none;
            color: gray;
        }
        th>a:hover{
            color:rgb(219, 160, 83);
        }
    </style>
</head>

<body>
    <div class="navbar fixed-top navbar-dark bg-dark shadow-sm">
        <div class="container">
            <a href="index.html" class="navbar-brand d-flex justify-content-center align-self-center">
                <strong>ëì¶© ìë§¤íë ííì´ì§</strong>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader"
                aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarHeader">
                <div class="navbar-nav">
                  <a class="nav-link active" aria-current="page" href="./index.html">Home</a>
                  <a class="nav-link" href="./movieinfo.html">ìí ìê°</a>
                  <a class="nav-link" href="./login.html">ë¡ê·¸ì¸ / íìê°ì</a>
                </div>
              </div>
        </div>
    </div>
    <div class="navbar">
        <div class="container"></div>
        <br> <br>
    </div>

    <div class="maincontent border rounded overflow-hidden mb-4 shadow-sm h-md-250 position-relative bg-white">
        <div class="col p-4 d-flex flex-column position-static">

            <div class="flex-row">
                <h2>ìë§¤íê¸°</h2>
                <div>
                    <form class="findByDate">
                        <div>
                            ì´ë¤ ë ì§ì ìíë¥¼ ìíìëì?<br>
                            <input type="date" onchange="">
                        </div>
                        <div class="infoAfterDate">
                            <div class="threater">
                                ì´ë¤ ê·¹ì¥ì ìíìëì?<br>
                                <select>
                                    <option value="none" selected>---ì ííì¸ì---</option>
                                    <option value="ë©ìº ê·¹ì¥ ì­ì¼ì ">ë©ìº ê·¹ì¥ ì­ì¼ì </option>
                                    <option value="ë©ìº ê·¹ì¥ ì ë¦ì ">ë©ìº ê·¹ì¥ ì ë¦ì </option>
                                    <option value="êµ­ë¦½ê·¹ì¥ ìì²­ì ">êµ­ë¦½ê·¹ì¥ ìì²­ì </option>
                                </select>
                            </div>
                            <div>
                                ì´ë¤ ìê°ëì ìíë¥¼ ìíìëì?<br>
                                <select>
                                    <option value="09:00">09:00(ì¡°ì¡°)</option>
                                    <option value="12:00">12:00</option>
                                    <option value="15:00">15:00</option>
                                    <option value="18:00">18:00</option>
                                    <option value="21:00">21:00</option>
                                    <option value="24:00">24:00(ì¬ì¼)</option>
                                </select>
                            </div>
                            <button class="btn" type="submit" style="float:right;">ìë§¤íê¸°</btn>
                        </div>
                    </form>
                </div>
            </div>

        </div>

    </div>
    <script>

    </script>

</body>

</html>