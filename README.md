# README

Once the app is up and running using rails server, create an account in rails console using this line:

User.create!({:username => "username", :email => "email", :password => "pw", :password_confirmation => "pw" })

where username is the test account username, email is the test account email and pw is a password which meets the constraints, e.g. 111111

Use these details to log in to the app and navigate.




Checklist:

1. Views: ✓
a. A home page.
b. A contact page with contact form.
c. Resource pages for all of your appropriate model resources. Only provide
routes and actions to all of your resource paths if they are needed.
d. All views conforming to best practice guidelines for HTML5 and CSS, for
example as through boilerplate templates, with styles used to present content
in a clear and appropriate way.
e. Partials used to ensure that each page has a standardised header and footer.
f. jQuery used where appropriate to assist in providing a good user experience
(for example, checking that form fields are not empty prior to submission,
if they are required).
2. Controllers:
a. A controller to handle your home and contact page.
b. Controllers for each of your model resources with an appropriate use of
strong parameters.
c. Only actions for those routes which are exposed.
d. Appropriate tests for each of your controller actions, which all pass. You
should also test basic view content within your controller tests.
3. Mailer:
a. A mailer to handle your contact request. This does not need to be linked to
an SMTP server.
b. Appropriate previews and tests for the mailer, which all pass.
4. Models:
a. A series of database migrations that you have used to build your application,
with the schema including appropriate fields, data types, defaults, nullability
and indices.
b. At least three model classes which provide appropriate validations,
associations and scopes.
c. Appropriate tests for each of your models, which all pass.
5. Configuration:
a. Appropriate environment configuration for your application, including
gems and environment settings.
b. Only the required routes needed for your application.
c. The use of localised strings throughout your application.
d. A git repository showing your development through regular commits.
e. Appropriate use of comments and code style throughout.