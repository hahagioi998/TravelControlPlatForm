package Util;

import tra.UserDaoImpl;

public class DaoFactory {//���������
	
		public static UserDaoImpl  getDaoImpl()
		{
			return new UserDaoImpl();
		}

	}
