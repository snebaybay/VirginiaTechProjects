<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>My Bookstore</title>
    <meta charset="utf-8">
    <meta name="description" content="The homepage for My Bookstore">

    <!--
        normalize-and-reset.css is a basic CSS reset; useful for starting from ground zero.
        always include this first.
    -->

    <link rel="stylesheet" href="css/normalize-and-reset.css">


    <!--
        cascading appropriately, we have:

        main.css    --  all things common
        header.css  --  header-specific rules
        footer.css  --  footer-specific rules
        <page>.css  --  page-specific rules
        extras.css  --  extras you may want
    -->
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/homepage.css">

</head>

<body>
<main>
    <jsp:include page="WEB-INF/jsp/header.jsp"/>
    <section>
        <br>
        Welcome everyone!
        <br>
        <br>
        <p>Take a look around :)</p>
        <br>
        <hr>
        <br>
       <div id="bestSellers"> Best Sellers:
        <br>
           <br>
           <img src="${initParam.bookImages}Book1.jpeg" style="width: 185px; height: 250px"
                alt="Book Icon"/>
           <img src="${initParam.bookImages}Book2.jpeg" style="width: 185px; height: 250px"
                alt="Book Icon"/>
           <img src="${initParam.bookImages}Book3.jpeg" style="width: 185px; height: 250px"
                alt="Book Icon"/>
           <img src="${initParam.bookImages}Book4.jpeg" style="width: 185px; height: 250px"
                alt="Book Icon"/>
           <img src="${initParam.bookImages}Book5.jpeg" style="width: 185px; height: 250px"
                alt="Book Icon"/>
           <br>
           <br>
           <br>
           <p>Didn't find what you're looking for?</p>  <a href="category.jsp">Search Here!</a>

       </div>
    </section>
    <jsp:include page="WEB-INF/jsp/footer.jsp"/>
</main>
</body>
</html>
