<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>Bookstore Category Page</title>
    <meta charset="utf-8">
    <meta name="description" content="The category page for a bookstore">

    <!--
        normalize-and-reset.css.css is a basic CSS reset; useful for starting from ground zero.
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
    <link rel="stylesheet" href="css/category.css">

</head>

<body>
<main>
    <jsp:include page="WEB-INF/jsp/header.jsp"/>
    <section>
        <div id="leftBody">
            <br>
        <h1> Welcome to the Fiction Category. Below are our top sellers.</h1>
            <br>

        </div>
    </section>

    <div id="rightBody">
        <article>
            <ul class="bookBoxes">
                <li class="bookBlock">
                    <div class="bookImage">
                        <a href="#">
                            <img src="${initParam.bookImages}the-hobbit.gif"
                                 alt="The Hobbit">
                        </a>
                    </div>
                    <ul class="bookInfo">
                        <li class="bookTitle">The Hobbit</li>
                        <li class="bookAuthor">J.R.R. Tolkein</li>
                        <li class="bookPrice">$8.99</li>
                    </ul>
                    <ul class="bookButtons">
                        <li class="addToCartButton">
                            <a class="bookButtonLink" href="#">Add to Cart</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </article>
        <article>
            <ul class="bookBoxes">
                <li class="bookBlock">
                    <div class="bookImage">
                        <a href="#">
                            <img src="${initParam.bookImages}Book1.jpeg"
                                 alt="The Hobbit">
                        </a>
                    </div>
                    <ul class="bookInfo">
                        <li class="bookTitle">Harry Potter & the Sorcerer's Stone</li>
                        <li class="bookAuthor">JK Rowling</li>
                        <li class="bookPrice">$5.99</li>
                    </ul>
                    <ul class="bookButtons">
                        <li class="addToCartButton">
                            <a class="bookButtonLink" href="#">Add to Cart</a>
                        </li>
                        <li class="readNowButton">
                            <a class="bookButtonLink" href="#">Read Now</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </article>

        <article>
            <ul class="bookBoxes">
                <li class="bookBlock">
                    <div class="bookImage">
                        <a href="#">
                            <img src="${initParam.bookImages}Book2.jpeg"
                                 alt="The Hobbit">
                        </a>
                    </div>
                    <ul class="bookInfo">
                        <li class="bookTitle">Harry Potter & The Chamber of Secrets</li>
                        <li class="bookAuthor">JK Rowling</li>
                        <li class="bookPrice">$7.99</li>
                    </ul>
                    <ul class="bookButtons">
                        <li class="addToCartButton">
                            <a class="bookButtonLink" href="#">Add to Cart</a>
                        </li>
                        <li class="readNowButton">
                            <a class="bookButtonLink" href="#">Read Now</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </article>

        <article>
            <ul class="bookBoxes">
                <li class="bookBlock">
                    <div class="bookImage">
                        <a href="#">
                            <img src="${initParam.bookImages}Book3.jpeg"
                                 alt="The Hobbit">
                        </a>
                    </div>
                    <ul class="bookInfo">
                        <li class="bookTitle">Harry Potter & The Goblet</li>
                        <li class="bookAuthor">JK Rowling</li>
                        <li class="bookPrice">$9.99</li>
                    </ul>
                    <ul class="bookButtons">
                        <li class="addToCartButton">
                            <a class="bookButtonLink" href="#">Add to Cart</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </article>
    </div>
    <h6 style="">Other Categories</h6>
    <div class="vertical-menu">
        <a href="#" class="active">Fiction</a>
        <a href="#">Mystery</a>
        <a href="#">Romance</a>
        <a href="#">Thriller</a>
    </div>
    <br>
    <br>
    </div>
    <jsp:include page="WEB-INF/jsp/footer.jsp"/>
</main>
</body>
</html>
