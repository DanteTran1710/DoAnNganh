 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.findingcareer.service;

import com.findingcareer.pojo.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author hp
 */
public interface UserService extends UserDetailsService {
    boolean addUser(User user);
    User getUserByUsername(String username);
    boolean updateUser(User user);
}
