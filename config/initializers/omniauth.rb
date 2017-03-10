OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
     provider :google_oauth2, "313930346927-rid262bt0recr7llcf7oo479dbcsg19d.apps.googleusercontent.com", "FVoFbH8dswFNXM-4E6Jsxo15"
  #   scope: ['https://mail.google.com/','contacts','plus.login','plus.me','userinfo.email','userinfo.profile']
     provider :twitter, "37FRvK516zX4PiWGzXzRMja0J", "5lgd0wWmDAm9KoNyxV8jVuiDDCrbWMmpVt3UPLK583V4ARcHWA"
     provider :facebook, "1857150984499762", "c9b581e5290d3b5c0a0268ded29f4664"
     provider :linkedin, "810m8p5cc6z36l", "HMEsQU91aHtZg9fe"
end