package tra;

import java.util.List;

import model.Info;
import model.Scene;
import model.User;

public interface IUserDao {
	
	     //用户类操作
	public User load(String username);//用户名查找
	public List<User> find_users();//查找表中的全部信息
	public void add_user(String username,String password);//添加用户
	public void update_user(User user,String username);//修改
	public User find_user(int id);//根据用户id查找
	
	//报名信息操作
	public void add_Info(Info info,String username);//添加报名信息
	public List<Info> find_infos(String username);//查找表中的全部信息
	
	//评论信息操作
	public void add_Comment(User user);//添加评论信息
	public List<User> find_comments(String username);//查找表中的评论信息
	
	//景点信息
	public void update_scene(String place);//修改
	public List<Scene> find_Scenes();//查找表中的全部信息
	public Scene find_Scene(String place);//根据景点名称查找
	public void update_Info(String status,String place);//修改
	
	
}
