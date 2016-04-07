# bongo API

 Welcome to bongo, a game of guessing places given an image.

 ## General Rules

 ### Authorization

 All authorized requests unless otherwise mentioned require
 an "**Auth-Token**" header to be present. Users are assigned an
 Auth Token during account creation.

 ### Errors

 Any request that fails to be processed will contain an "errors"
 key in the returned JSON describing the problem.

 ## Routes

 #### POST /signups
This creates a new user
 Params:
   * username: string
   * password: string

 Returns 201 Created on Success and 422 Unprocessable Entity in case fof failure.

 **Request:**

 ```
 {
    "username": "dane"
    "password": "bongo"
 }
 ```

 **Response:**

 ```
 {
   "user": {
    "username": "dane",
      "auth_token": "7774743beeb3c26dfdd80213ba1b9097"
   }
 }
 ```
