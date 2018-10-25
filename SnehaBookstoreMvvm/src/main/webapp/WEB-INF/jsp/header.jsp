<header>
	<div id ="leftHeader">
		<div id="logo">
			<a href="index.jsp">
				<img src="${initParam.siteImages}BookLogoReal.jpeg" style="width: 100px; height: 105px" alt="Your Bookstore Logo"/>
			</a>
		</div>
        <div id="loginButton">SP</div>
        <p id="LogInName">Hello Sneha! </p>
	</div>

	<div id = "midHeader">
		<div id="logoText">
			<a href="index.jsp">Florish & Blotts Bookstore</a>
		</div>
        <form id="searchForm" action="category.jsp">
            <input id="searchBar" type="text">
            <input id="searchIcon" type="image" src="${initParam.siteImages}search-log.jpeg"
                   style="width: 35px; height: 35px" alt="Search Icon">
        </form>

	</div>

	<div id="rightHeader">
		<div id="cartAndLogin">
			<div id="cartButton">
				<a href="cart.jsp"><img src="${initParam.siteImages}ShoppingCartIcon.jpeg" style="width: 35px; height: 35px"
                                 alt="Cart Icon"/></a>
				<div id="cartCount">0</div>
			</div>
		</div>


		<div id="categoryDropdown">
			<button id="categoryLabel">Category</button>
            <ul id="categoryDropdownList">
				<li class="categoryDropdownItem"><a href="category.jsp">Fiction</a></li>
				<li class="categoryDropdownItem"><a href="category.jsp">Mystery</a></li>
				<li class="categoryDropdownItem"><a href="category.jsp">Romance</a></li>
				<li class="categoryDropdownItem"><a href="category.jsp">Thriller</a></li>
			</ul>
		</div>

	</div>

</header>
