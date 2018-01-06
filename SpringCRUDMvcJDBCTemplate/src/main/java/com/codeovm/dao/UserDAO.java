package com.codeovm.dao;

import java.util.List;

import com.codeovm.model.User;

public interface UserDAO {

	public List<User> listAllUsers();

	public void addUser(User user);

	public void updateUser(User user);

	public void deleteUser(int id);

	public User findUserById(int id);
}
