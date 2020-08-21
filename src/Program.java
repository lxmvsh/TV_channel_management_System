import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JTextArea;

public class Program {
	String name;
	String start_time;
	int duration;
	String category;
        String apm;
	double h;
	int count1;
	Timer t = new Timer();
        static Connection conn;
	
	Program(String c_name,String s_time,int du,String cat,String a){
		name=c_name;
		start_time = s_time;
		duration = du;
		category = cat;
                apm = a;
	}
	Program(String c_name,String s_time,double h1,int du,String cat,String a){
		name=c_name;
		start_time = s_time;
		h = h1;
		duration = du;
		category = cat;
                apm = a;
	}
	ArrayList<Program_ad> P_ad = new ArrayList<Program_ad>();
	void setAd() {
		try {
			conn = databaseConnection.connection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("SELECT id,name,program_name,duration,priority FROM program_ad WHERE program_name = \""+name+"\"  ORDER BY priority");
			if(rs.next()==false) {
				//System.out.println("No Adds present in database.");
				}
			else
			{
				 do{
					 Program_ad p = new Program_ad(rs.getString(2),rs.getString(3),rs.getInt(4),rs.getInt(5));
					P_ad.add(p);
					}while(rs.next());
				
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
	}
	
	
	int i = 0;
	int j = 0;
	
	void getAd(int d,JTextArea textArea) {
		count1=d/18;
		j = 0;
		int count=0;
		int flag = 0;
		String s_time = t.addTime(start_time,apm, 15);
		String e_time = t.addTime(s_time,apm, 3);
		while(count1 >0){
			count =0;
                        textArea.setText(textArea.getText()+"\n"+s_time+"-"+e_time);
//			System.out.print(s_time+"-"+e_time);
                        textArea.setText(textArea.getText()+""+"(");
//			System.out.print("(");
			while(j < 2 && count < 2 && flag==0) {
//				System.out.print(Channel_ad.ad.get(j).name+",");
                                textArea.setText(textArea.getText()+""+Channel_ad.ad.get(j).name+",");
				j++;
				count++;
				if(j == 2)
					flag =1;
			}
			while(i< P_ad.size() && count < 2 ){
//				System.out.print(String.format(P_ad.get(i).name+"," ));
                                textArea.setText(textArea.getText()+""+String.format(P_ad.get(i).name+"," ));
				i++;
				count++;
			
			}
			j = j % (Channel_ad.ad.size()-1);
			while(j < Channel_ad.ad.size() && count < 2) {
//				System.out.print(Channel_ad.ad.get(j).name+",");
                                textArea.setText(textArea.getText()+""+Channel_ad.ad.get(j).name+",");
				j++;
				count++;
				if(j == Channel_ad.ad.size())
					j =0;
			}
                        textArea.setText(textArea.getText()+""+")");
//			System.out.println(")");
			s_time = t.addTime(e_time,apm, 15);
			e_time = t.addTime(s_time,apm,3);
			//System.out.println(s_time+"-"+e_time);
			count1--;
		}
	}
}
