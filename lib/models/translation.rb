class Translation < ActiveRecord::Base
  belongs_to :locale
  
  def default_locale_value
    Locale.default_locale.translations.find_by_key(self.key).value
  end
  
end
