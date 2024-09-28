package springmvc.services;

import org.springframework.stereotype.Service;

@Service
public class AuthService {

    public boolean authenticate(String username, String password) {
        // In a real application, use a user service or database to validate credentials.
        return "admin".equals(username) && "password123".equals(password);
    }
}

