import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Channel_ad {
	static int count=0;
	String name;
	int valid_year;
	int duration;
        static Connection conn;
	static ArrayList<Channel_ad> ad = new ArrayList<Channel_ad>();
	static void setA() {
		try {
                        conn = databaseConnection.connection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT id,name,duration FROM channel_ad");
			if(rs.next()==false) {
				//System.out.println("No Adds present in database.");
				}
			else
			{
				 do{
					 Channel_ad p = new Channel_ad(rs.getString(2),rs.getInt(3));
					 ad.add(p);
					}while(rs.next());
				
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
	}
	
	
	
	
	
	Channel_ad(String c_name,int v_year,int du){
		name = c_name;
		valid_year = v_year;
		duration = du;
	}
	Channel_ad(String c_name,int du){
		name = c_name;
		duration = du;
	}
}
