rails generate model Review content:text restaurant:references



rails generate model Hotel content:text restaurant:references





---- ---- -----  TEST  ---- ---- ----
 
Design and implement a project based on Ruby on Rails (Rails 4.2.x, Ruby 2.2.3),
composed of a simple Hotel entity (name, country_code, description, average_price, views_count).
The entity must be saved on a DB Postgres.
 
1. Provide a complete CRUD for this entity, including an endpoint that shows the list of all elements (index).
Each call to the CRUD must respond with the result of the operation and the updated object in JSON. (for convenience, only provide the EP index)
 
2. Provide a User entity (first_name, last_name, email), identified by email and password protected. Allow one User to have privileged access (manager) to a Hotel (NOTE: not all users have access to a Hotel, only those with the role indicated). Then limit the APIs so that calls in GET index return only the hotels to which the user has access (manager), which authenticates itself through a token obtained from the system after logging in.
 
The description field of the model must be able to be translated into different languages.
The language specified in the Accept-Language standard header will be returned via API. (for convenience, use it_IT, es_US, en_UK as languages)
The average_price field must also be dynamic.
Then provide a currency conversion mode and save in a standard format on the model field. For the target currency, also use the Accept-Language header in this case.
 
Add an asynchronous job that updates the "views_count" field after the index call. So, for each hotel returned this job will be queued (an array of ids can be passed as parameters or the single id, then a job for each hotel). This job will simply add 1 to the "views_count" field of the hotel in question.
 
Classes, validations and endpoints must be correctly tested (rspec is recommended).
The project must be buildable and executable with Docker (Dockerfile and possible docker-compose).
 
As a timing, we consider 2/3 days work.
 
To show us the project and evaluate it, load all the sources on a public repo. If possible use only the one as "workdir", so that we can also see the flow of commits.


---- ---- ---- ---- ---- ---- ----
