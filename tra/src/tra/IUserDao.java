package tra;

import java.util.List;

import model.Info;
import model.Scene;
import model.User;

public interface IUserDao {
	
	     //�û������
	public User load(String username);//�û�������
	public List<User> find_users();//���ұ��е�ȫ����Ϣ
	public void add_user(String username,String password);//����û�
	public void update_user(User user,String username);//�޸�
	public User find_user(int id);//�����û�id����
	
	//������Ϣ����
	public void add_Info(Info info,String username);//��ӱ�����Ϣ
	public List<Info> find_infos(String username);//���ұ��е�ȫ����Ϣ
	
	//������Ϣ����
	public void add_Comment(User user);//���������Ϣ
	public List<User> find_comments(String username);//���ұ��е�������Ϣ
	
	//������Ϣ
	public void update_scene(String place);//�޸�
	public List<Scene> find_Scenes();//���ұ��е�ȫ����Ϣ
	public Scene find_Scene(String place);//���ݾ������Ʋ���
	public void update_Info(String status,String place);//�޸�
	
	
}
