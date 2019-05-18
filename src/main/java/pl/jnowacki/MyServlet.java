package pl.jnowacki;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        getAlbums(req);

        getServletContext().getRequestDispatcher("/albums.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        final String SUBMITTED_SESSION_NAME = "submitted";

        List<Album> albums = getAlbums(req);

        if(req.getParameter(SUBMITTED_SESSION_NAME) != null
                && req.getParameter(SUBMITTED_SESSION_NAME).equals("submitted")) {

            Album album = new Album();
            album.setArtist(req.getParameter("artist"));
            album.setTitle(req.getParameter("title"));
            album.setYear(Integer.valueOf(req.getParameter("year")));

            album.setGenre(req.getParameter("genre"));
            album.setAddedDate(new Date());

            if (album.isValid()) {
                albums.add(album);
            }
        }

        getServletContext().getRequestDispatcher("/albums.jsp").forward(req, resp);
    }

    private List<Album> getAlbums(HttpServletRequest req) {
        final String ALBUM_PARAM_NAME = "albums";

        List<Album> albums = (List<Album>) req.getSession().getAttribute(ALBUM_PARAM_NAME);

        if (albums == null) {
            albums = new ArrayList<>();
            req.getSession().setAttribute(ALBUM_PARAM_NAME, albums);
        }

        return albums;
    }
}
