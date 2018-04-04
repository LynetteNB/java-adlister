import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.Driver;

public class MySQLAdsDao implements Ads {
    private Connection connection;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Ad> all() {
        List<Ad> adList = new ArrayList<>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM ads");
            while(rs.next()) {
                Ad ad = new Ad(rs.getLong("id"), rs.getLong("user_id"), rs.getString("title"), rs.getString("description"));
                adList.add(ad);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return adList;
    };
    public Long insert(Ad ad){
        Long id = (long) 0;
        try {
            Statement stmt = connection.createStatement();
            String query = "INSERT INTO ads (title, description, user_id) VALUES ('" + ad.getTitle() + "', '" + ad.getDescription() + "', " + ad.getUserId() + ")";
            //"INSERT INTO ads (title, description, user_id) VALUES ('title', 'description', 1)"
            stmt.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet rs = stmt.getGeneratedKeys();
            if(rs.next()){
                id = rs.getLong(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    };
}
