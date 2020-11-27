# Private App Template

Rails template for creating private apps.  This template includes:
 * sqlite3 for production with the database on the local machine
 * Devise for user accounts
 * Users can be "admins" or regular users
 * Admins can create more user accounts
 * No credentials (like database) are embedded in the app
 * `.env` file created at deployment for credentials (like AWS S3)
 * ActiveStorage on S3 for production (should be easy to change to `:local`)
 * Existing Home page: `welcome#home`
 * Access restricted to logged in users

The core idea of apps built on this template is that it is for private use, think friends-and-family.  You create an account for your friend and share their credentails with them manually through another channel.  Some projects I've built on this model are private blogs, a family tree, or an app to share childhood family videos.

Things you don't need to worry about with this model:
 * Bots.  Users must be logged in, only admins can create accounts
 * Email config.  No built-in user-initiated account creation, password-reset flow involves reaching out to admin directly.  You don't need email (or DKIM config, or mailgun/sendgrid/whatever)

Deployment notes:
 * Create a `.env` file with any credentials when you deploy.
 * Create your first user from the rails console:  `User.create! email: "#{EMAIL}", name: "", admin: 1, password: "#{PASS}"`
