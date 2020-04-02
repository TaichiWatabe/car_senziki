module UsersHelper

  # 引数で与えられたユーザーのGravatar画像を返す
<<<<<<< HEAD
  def gravatar_for(user, size: 56)
=======
  def gravatar_for(user, size: 40)
>>>>>>> sign-up2
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> sign-up2
