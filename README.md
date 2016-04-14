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

#### POST /login

  This logs in your user
   Params:
   	* username: string
   	* password: string

   	* header: Auth-Token

   Returns 200 OK on Success and 401 Unauthorized if no user found or incorrect user data.

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

#### POST /images

   This allows image uploads
    Params:

    	* img: <image file>
    	* caption: string

    	* header: Auth-Token

    Returns 201 Created on Success and 422 Unprocessable Entity if fail.

#### POST /leaderboards

    This sends and saves the user's score to the database
     Params:
     	* username: string
     	* score: integer

     Returns 201 Created on Success and 422 Unprocessable Entity  if incorrect data.

     **Request:**

     ```
     {
     	"username": "dane"
        "score": "100"
     }
     ```

     **Response:**

     ```
     {
       "leaderboard": {
        "username": "dane",
        "score": "100"
       }
     }
     ```
