package tra;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Util.DBUtil;
import Util.UserException;
import model.Info;
import model.Scene;
import model.User;


public class UserDaoImpl implements IUserDao{

	@Override
	public User load(String username) {
		//获得连接对象
		Connection connection=DBUtil.getConnection();
	    //准备sql语句
		String sql="select * from login_user where username = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		//集合中只能放User对象
		User user=null;
		try {
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setString(1,username);
			resultSet=preparedStatement.executeQuery();
			 //遍历结果集
			 while(resultSet.next())
			 {
				 user=new User();
				 user.setId(resultSet.getInt("id"));
				 user.setUsername(username);
				 user.setPassword(resultSet.getString("password"));
				
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			//关闭资源
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
			
		 }   
          return user;	
	    }

	@Override
	public List<User> find_users() {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from login_user ";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<User> users = new ArrayList<User>();
		User user = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				user = new User();
				user=new User();
				 user.setId(resultSet.getInt("id"));
				 user.setUsername(resultSet.getString("username"));
				 user.setPassword(resultSet.getString("password"));
				 users.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  users;
	}

	@Override
	public void add_Comment(User user) {
		//获得链接对象
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "insert into sayings(username,saying,time,person) value(?,?,?,?)";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getSaying());
			preparedStatement.setString(3, user.getTime());
			preparedStatement.setString(4, user.getPerson());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//关闭资源
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}

}

	@Override
	public void add_user(String username, String password) {
		//获得链接对象
				Connection connection = DBUtil.getConnection();
				//准备sql语句
				String sql = "select count(*) from login_user where username = ?";
				//创建语句传输对象
				PreparedStatement preparedStatement = null;
				ResultSet resultSet = null;
				try {
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1,username);
					//接收结果集
					resultSet = preparedStatement.executeQuery();
					//遍历结果集
					while(resultSet.next()) {
						if (resultSet.getInt(1) > 0) {
							throw new UserException("用户已存在") ;
						}
					}
					
					sql = "insert into login_user(username,password) values(?,?)";
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1,username);
					preparedStatement.setString(2, password);
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					//关闭资源
					DBUtil.close(resultSet);
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
				}
		}

	@Override
	public void add_Info(Info info,String username) {
		//获得链接对象
				Connection connection = DBUtil.getConnection();
				//准备sql语句
				String sql = "insert into info(username,u_Type,u_Name,telephone,QQ,Class1,Other,Info_time,place,number,status) value(?,?,?,?,?,?,?,?,?,?,?)";
				//创建语句传输对象
				PreparedStatement preparedStatement = null;
				ResultSet resultSet = null;
				try {
					
					preparedStatement = connection.prepareStatement(sql);
					preparedStatement.setString(1, username);
					preparedStatement.setString(2, info.getU_Type());
					preparedStatement.setString(3, info.getU_Name());
					preparedStatement.setString(4, info.getTelephone());
					preparedStatement.setString(5, info.getQQ());
					preparedStatement.setString(6, info.getClass1());
					preparedStatement.setString(7, info.getOther());
					preparedStatement.setString(8, info.getInfo_time());
					preparedStatement.setString(9, info.getPlace());
					preparedStatement.setInt(10, info.getNumber());
					preparedStatement.setString(11, info.getStatus());
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally {
					//关闭资源
					DBUtil.close(resultSet);
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
				}
	}

	@Override
	public List<Info> find_infos(String username) {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from info where username = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<Info> infos = new ArrayList<Info>();
		Info info = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,username);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				
				  info=new Info();
				  info.setU_Name(resultSet.getString("u_Name"));
				  info.setU_Type(resultSet.getString("u_Type"));
				 info.setTelephone(resultSet.getString("telephone"));
				info.setNumber(resultSet.getInt("number"));
				info.setPlace(resultSet.getString("place"));
				info.setStatus(resultSet.getString("status"));
				 info.setClass1(resultSet.getString("Class1"));
				 info.setOther(resultSet.getString("Other"));
				 infos.add(info);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  infos;
	}

	@Override
	public List<User> find_comments(String username) {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from sayings where username = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<User> users = new ArrayList<User>();
		User user = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,username);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				
				  user=new User();
				  user.setUsername(resultSet.getString("username"));
				  user.setSaying(resultSet.getString("saying"));
				  user.setTime(resultSet.getString("time"));
				  user.setPerson(resultSet.getString("person"));
				 users.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  users;
	}

	@Override
	public void update_user(User user,String username) {//更改   /*更改用户信息*/
		//获得连接对象
				Connection connection=DBUtil.getConnection();
			    //准备sql语句
				/*String sql="update p_user set u_password=?,u_nickname=?,u_Name=?,u_Type=?,u_group=? where u_Id= ?";*/
				String sql="update login_user set password=?,username=? where id= ?";
				//创建语句传输对象
				PreparedStatement preparedStatement=null;
				try {
					preparedStatement=connection.prepareStatement(sql);
					preparedStatement.setString(1, user.getPassword());
					preparedStatement.setString(2, user.getUsername());
					preparedStatement.setInt(3, user.getId());
					preparedStatement.executeUpdate();
					sql="update info set username=? where username= ?";
					preparedStatement=connection.prepareStatement(sql);
					preparedStatement.setString(1, user.getUsername());
					preparedStatement.setString(2, username);
					preparedStatement.executeUpdate();
					sql="update sayings set username=? where username= ?";
					preparedStatement=connection.prepareStatement(sql);
					preparedStatement.setString(1, user.getUsername());
					preparedStatement.setString(2, username);
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally
				{
					//关闭资源
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
					
				}
		
		
	}

	@Override
	public User find_user(int id) {
		//若用户名还没填，则设置用户名为"空",若还没加入小组，则设置小组名为”空“
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from login_user  where id = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1,id);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				user = new User();
				user.setId(id);
				
				 user.setUsername(resultSet.getString("username"));
				 user.setPassword(resultSet.getString("password"));
			      
             }
	           } catch (SQLException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
			}finally {
								DBUtil.close(resultSet);
								DBUtil.close(preparedStatement);
								DBUtil.close(connection);
							}
							return  user;
				}

	@Override
	public void update_scene(String place) {
		//获得连接对象
		Connection connection=DBUtil.getConnection();
	    //准备sql语句
		/*String sql="update p_user set u_password=?,u_nickname=?,u_Name=?,u_Type=?,u_group=? where u_Id= ?";*/
		String sql="update p_info set R_number=? where place= ?";
		//创建语句传输对象
		String sql2="select sum(number) from info where place=? ";
		PreparedStatement preparedStatement=null;
		
		ResultSet resultSet = null;
		int sum=0;
		try {
			
			preparedStatement=connection.prepareStatement(sql2);
			preparedStatement.setString(1, place);;
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				sum=resultSet.getInt("sum(number)");
			      System.out.println(sum);
             }
			preparedStatement=connection.prepareStatement(sql);
			preparedStatement.setInt(1, sum);
			preparedStatement.setString(2,place);
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{
			//关闭资源
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
		
			DBUtil.close(connection);
			
		}
	}

	@Override
	public List<Scene> find_Scenes() {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from p_info ";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<Scene> scenes = new ArrayList<Scene>();
		Scene scene = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				scene = new Scene();
				scene.setPlace(resultSet.getString("place"));;
				scene.setS_number(resultSet.getInt("S_number"));
				scene.setR_number(resultSet.getInt("R_number"));
				scene.setStatus(resultSet.getString("status"));
				scenes.add(scene);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  scenes;
	}

	@Override
	public Scene find_Scene(String place) {
		//获得连接对象
				Connection connection=DBUtil.getConnection();
			    //准备sql语句
				String sql="select * from p_info where place = ?";
				//创建语句传输对象
				PreparedStatement preparedStatement=null;
				ResultSet resultSet=null;
				//集合中只能放User对象
				Scene user=null;
				try {
					preparedStatement=connection.prepareStatement(sql);
					preparedStatement.setString(1,place);
					resultSet=preparedStatement.executeQuery();
					 //遍历结果集
					 while(resultSet.next())
					 {
						 user=new Scene();
						 user.setPlace(resultSet.getString("place"));
						 user.setS_number(resultSet.getInt("S_number"));
						 user.setR_number(resultSet.getInt("R_number"));
						user.setStatus(resultSet.getString("status"));	 
						
					 }
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally
				{
					//关闭资源
					DBUtil.close(resultSet);
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
					
				 }   
		          return user;	
	}

	@Override
	public void update_Info(String status,String place) {
		//获得连接对象
				Connection connection=DBUtil.getConnection();
			    //准备sql语句
				/*String sql="update p_user set u_password=?,u_nickname=?,u_Name=?,u_Type=?,u_group=? where u_Id= ?";*/
				String sql="update info set status=? where place= ?";
				//创建语句传输对象
				PreparedStatement preparedStatement=null;
				try {
					preparedStatement=connection.prepareStatement(sql);
					preparedStatement.setString(1,status);
					preparedStatement.setString(2,place);
					preparedStatement.executeUpdate();
					sql="update p_info set status=? where place= ?";
					preparedStatement=connection.prepareStatement(sql);
					preparedStatement.setString(1,status);
					preparedStatement.setString(2,place);
					preparedStatement.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally
				{
					//关闭资源
				
					DBUtil.close(preparedStatement);
					DBUtil.close(connection);
					
				}
		
	}

	
	

}
