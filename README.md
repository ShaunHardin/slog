# Slog

Slog (Shaun's blog) is a Rails app intended to be a learning project as
I make the switch from the .NET realm into the world of Ruby on Rails.

As such, please excuse any ugly code found here (though I'm always
interested in learning more if you have specific constructive criticism).

I'm using Devise (https://github.com/plataformatec/devise) for
authentication and using Cancan (https://github.com/ryanb/cancan) for
authorization to limit who can publish blog posts.

Potentially down the road, users who log in will be able to post
comments, but currently registering/logging in does no good unless they
are authorized to create/edit posts.
