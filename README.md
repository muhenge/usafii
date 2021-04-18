# This an API for authentication system using Ruby on Rails and JWT
> use only POST request for both Sign up and Login system

### Sign up 

endpoint : https://usafii.herokuapp.com/users/

Body json : ```{
                  "user":{
                  "firstname":"any firstname",
                  "lastname":"any lastname",
                  "username":"any username",
                  "about":"this is the about",
                  "email":"any@gmail.com",
                  "password":"123456"
                  }
                }```
### Login

endpoint : https://usafii.herokuapp.com/users/sign_in

Body json : ```{
                  "email":"any@gmail.com",
                  "password":"123456"
                  }
                }```
    
## Response

* An auto generated JWT token
