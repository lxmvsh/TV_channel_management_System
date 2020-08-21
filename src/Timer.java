
public class Timer {
	static double convert(String time,String s) {
		
		String s1[] = time.split(":");
		int h = Integer.parseInt(s1[0]);
		int m = Integer.parseInt(s1[1]);
		if(s.compareTo("AM")==0 && h == 12)
		{
			h = h +12;
		}
		if(s.compareTo("PM")==0 && h != 12)
			h = h + 12;
		if(m != 0)
			return h+ 0.5;
		return h;
	}
	String addTime(String t,String s,int m) {
		String s1[] = t.split(":");
                String s2[] = s1[1].split(" ");
		int h = Integer.parseInt(s1[0]);
		int m1 = Integer.parseInt(s2[0]);
		m1 = m1+m;
		if(m1 > 60) {
			h = h +1;
			m1 = m1-60;
		}
		return ""+h+":"+m1+" "+s+"";
	}
}