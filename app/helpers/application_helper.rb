module ApplicationHelper
  def current_account
    if current_user.nil? || Account.find_by(user_id: current_user.id).nil?
      @current_account = nil
    else
      @current_account ||= Account.find_by(user_id: current_user.id)
    end
  end

  def default_meta_tags
   {
     site: 'サイト名',
     title: 'タイトル',
     reverse: true,
     charset: 'utf-8',
     description: 'description',
     keywords: 'キーワード',
     canonical: request.original_url,
     separator: '|'
     #icon: [
      # { href: image_url('favicon.ico') },
      # { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
     #],
     #og: {
      # site_name: 'サイト名', # もしくは site_name: :site
      # title: 'タイトル', # もしくは title: :title
      # description: 'description', # もしくは description: :description
      # type: 'website',
      # url: request.original_url,
      # image: image_url('ogp.png'),
      # locale: 'ja_JP',
     #},
     #twitter: {
      # card: 'summary',
      # site: '@ツイッターのアカウント名',
     #}
   }
  end
end
