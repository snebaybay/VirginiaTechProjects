import business.ApplicationContext;
import business.book.Book;
import business.book.BookDao;
import business.category.Category;
import business.category.CategoryDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "Test", urlPatterns = {"/test"})
public class TestServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        BookDao bookDao = ApplicationContext.INSTANCE.getBookDao();
        CategoryDao categoryDao = ApplicationContext.INSTANCE.getCategoryDao();

        //Get selected category name and set it as an attribute
        String categoryName = request.getParameter("category");
        String selectedCategoryName = (categoryName == null) ? "classics" : categoryName;
        //guard for case where getParam return null (parameter doesn't exist)
        request.setAttribute("selectedCategoryName", selectedCategoryName);
        // Get the selected category book list and set it as an attribute

         Category selectedCategory = categoryDao.findByName(selectedCategoryName);
            List<Book> selectedBookList =
                    bookDao.findByCategoryId(selectedCategory.getCategoryId());
            request.setAttribute("selectedBookList", selectedBookList);

            String userPath = "/test";
            String url = "/WEB-INF/jsp" + userPath + ".jsp";
            request.getRequestDispatcher(url).forward(request, response);

    }
}