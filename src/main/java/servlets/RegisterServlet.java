package servlets;

import connections.Conector;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import modelsDAO.UserDAO;
import org.mindrot.jbcrypt.BCrypt;
import utils.Util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Servlet básico de registro en el que nos llegan los datos del formulario
 * ya validados del front y simplemente hacemos una validación de que los datos
 * a insertar no existan y después los insertamos en nuestra Db.
 * @author Alberto
 */
@WebServlet(name = "RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        HttpSession ses = req.getSession();
        Connection con = null;
        // Datos del usuario
        String userName = req.getParameter("user_name");
        String userLastName = req.getParameter("user_lastname");
        String userEmail = req.getParameter("user_email");
        String userBirthday = req.getParameter("user_birthday");
        String userDnie = req.getParameter("user_nif");
        String userSchool = req.getParameter("user_center");
        String userCourse = req.getParameter("user_course");
        String userPass = req.getParameter("user_password");
        String hashedPass = BCrypt.hashpw(userPass, BCrypt.gensalt());
        String userExists = "El usuario ya esta registrado";
        String userCreated = "";

        try {
            con = new Conector().getMySqlConnection();
            boolean emailExists = Util.checkIfEmailExist(con, userEmail);
            boolean dnieExists = Util.checkIfDnieExist(con, userDnie);
            if (con != null) {
                if (emailExists || dnieExists) {
                    if (emailExists)
                        userExists += "<br/>Email ya existe";
                    if (dnieExists)
                        userExists += "<br/>DNIE ya existe";
                    ses.setAttribute("userExists",userExists);
                    ses.setAttribute("errorMsgLogin",null);
                    ses.setAttribute("userRegistered",null);
                } else {
                    UserDAO.insertCredentials(con, userEmail, hashedPass);
                    UserDAO.insertUserInDB(con, userName, userLastName, userBirthday, userDnie, userEmail, hashedPass, userSchool, userCourse);
                    userCreated = "¡Usuario registrado con éxito!";
                    ses.setAttribute("userExists", null);
                    ses.setAttribute("errorMsgLogin", null);
                    ses.setAttribute("userRegistered",userCreated);
                }
                res.sendRedirect("./jsp/login.jsp");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
