Rails.application.routes.draw do
  # get 'products/index'
  # get 'products/show'

  get 'products', to: 'products#index', as: 'products'
# ^verb  ^URI          ^controller#action    ^ refer: products_path


  get 'products/:id', to: 'products#show',  as: 'product' , id: /\d+/
  # ^verb  ^URI          ^controller  ^action    ^ refer: product_path, constraint (for numeric values only)

end
