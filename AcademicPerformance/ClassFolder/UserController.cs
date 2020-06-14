﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AcademicPerformance.ClassFolder
{

    public class UserController
    {
        CDataAccess dataAccess = new CDataAccess();

        public UserController()
        {
            
        }

        public List<UserModel> GetAll()
        {
            List<UserModel> userList = new List<UserModel>();
            userList = dataAccess.GetUserList();
            return userList;
        }

        public bool IsLoginFree(string login)
        {
            return dataAccess.IsLoginFree(login);
        }
        public bool IsAuthValid(string login,string password)
        {
            return dataAccess.IsAuthValid(login,password);
        }

        public bool Add(UserModel newUser)
        {
            return dataAccess.InsertUser(newUser);
        }

        public bool Update(UserModel userToUpdate)
        {
            return dataAccess.UpdateUser(userToUpdate);
        }

        public bool Delete(int idUser)
        {
            return dataAccess.DeleteUser(idUser);
        }

        public UserModel SelectId(int idUser)
        {
            return dataAccess.SelectUserId(idUser);
        }
        public UserModel SelectName(string loginUser)
        {
            return dataAccess.SelectUserLogin(loginUser);
        }
    }
}
