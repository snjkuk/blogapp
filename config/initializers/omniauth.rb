OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
      provider :google_oauth2, "76962942646-6f9gq2qd50obiacqo3pon6vr0gul0l38.apps.googleusercontent.com", "cXCibofu8WmROBGxxpfBhrCL"
     # provider :google_oauth2, "109313246351-hd9l5gt2d4u3mcpuj2r49cgv11dj1av7.apps.googleusercontent.com", "emyojGz9bZleTL4-FetbgXA5"
  #   scope: ['https://mail.google.com/','contacts','plus.login','plus.me','userinfo.email','userinfo.profile']
     provider :twitter, "37FRvK516zX4PiWGzXzRMja0J", "5lgd0wWmDAm9KoNyxV8jVuiDDCrbWMmpVt3UPLK583V4ARcHWA"
     provider :facebook, "1857150984499762", "c9b581e5290d3b5c0a0268ded29f4664"
     provider :linkedin, "810m8p5cc6z36l", "HMEsQU91aHtZg9fe"
end