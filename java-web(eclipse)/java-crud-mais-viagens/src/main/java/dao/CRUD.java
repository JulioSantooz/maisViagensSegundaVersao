package dao;

import model.Feedback;
import java.util.List;

public interface CRUD {
	
	public static void create(Feedback feedback){}
	public static List<Feedback> find(String pesquisa){return null;}
	public static Feedback findByPk(int id_feedback){return null;}
	public static void update(Feedback feedback){}
	public static void delete(Feedback feedback){}
	
}
