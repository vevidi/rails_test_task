Test task description

Please use Ruby on Rails to solve the task.

Task:
Implement a page with a feedback form.
The form should be validated both client-side and server-side, with the following requirements:

    Age: between 17 and 65
    Name field should contain two words, both with capital letters
    Allow attaching and uploading a file (e.g. resume) to the form
    Form data should be saved in the database.
    Create a notification page confirming that the form was submitted correctly. The text should read "We are waiting for you on (date entered by the user in the form)".
    Upload all the completed work to your Github account.

Preferences:
Writing tests would be a plus.
Use ready-made gems if possible.

---------------------------------------------------------------

Run app:
1. Edit config/database.yml
                  username: pguser
                  password: '1111'
                  host: localhost
                  port: 5432
2.  rake db:setup
3.  rails s

Run tests:
    rake test
