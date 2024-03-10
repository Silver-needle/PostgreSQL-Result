ALTER TABLE users
  ADD CONSTRAINT users_type_id_fk
  FOREIGN KEY (type_id)
  REFERENCES user_types (id);

-----------------------------------------------------------------------------------

ALTER TABLE products
  ADD CONSTRAINT products_photo_id_fk
  FOREIGN KEY (photo_id)
  REFERENCES product_photos (id);

ALTER TABLE products
  ADD CONSTRAINT products_user_seller_id_fk
  FOREIGN KEY (user_seller_id)
  REFERENCES users (id);

ALTER TABLE products
  ADD CONSTRAINT products_catalog_id_fk
  FOREIGN KEY (catalog_id)
  REFERENCES product_catalogs (id);

ALTER TABLE products
  ADD CONSTRAINT products_group_id_fk
  FOREIGN KEY (group_id)
  REFERENCES product_groups (id);

-----------------------------------------------------------------------------------

ALTER TABLE product_photos
  ADD CONSTRAINT product_photos_product_id_fk
  FOREIGN KEY (product_id)
  REFERENCES products (id);

-----------------------------------------------------------------------------------

ALTER TABLE likes_products
  ADD CONSTRAINT likes_products_user_buyer_id_fk
  FOREIGN KEY (user_buyer_id)
  REFERENCES users (id);

ALTER TABLE likes_products
  ADD CONSTRAINT likes_products_product_id_fk
  FOREIGN KEY (product_id)
  REFERENCES products (id);

-----------------------------------------------------------------------------------

ALTER TABLE likes_seller
  ADD CONSTRAINT likes_seller_user_buyer_id_fk
  FOREIGN KEY (user_buyer_id)
  REFERENCES users (id);

ALTER TABLE likes_seller
  ADD CONSTRAINT likes_seller_user_seller_id_fk
  FOREIGN KEY (user_seller_id)
  REFERENCES users (id);

-----------------------------------------------------------------------------------

ALTER TABLE feedbacks
  ADD CONSTRAINT feedbacks_user_buyer_id_fk
  FOREIGN KEY (user_buyer_id)
  REFERENCES users (id);

ALTER TABLE feedbacks
  ADD CONSTRAINT feedbacks_product_id_fk
  FOREIGN KEY (product_id)
  REFERENCES products (id);

-----------------------------------------------------------------------------------

ALTER TABLE baskets
  ADD CONSTRAINT baskets_user_buyer_id_fk
  FOREIGN KEY (user_buyer_id)
  REFERENCES users (id);

-----------------------------------------------------------------------------------

ALTER TABLE baskets_product
  ADD CONSTRAINT baskets_product_product_id_fk
  FOREIGN KEY (product_id)
  REFERENCES products (id);

ALTER TABLE baskets_product
  ADD CONSTRAINT baskets_product_basket_id_fk
  FOREIGN KEY (basket_id)
  REFERENCES baskets (id);

-----------------------------------------------------------------------------------

ALTER TABLE orders
  ADD CONSTRAINT orders_user_buyer_id_fk
  FOREIGN KEY (user_buyer_id)
  REFERENCES users (id);

ALTER TABLE orders
  ADD CONSTRAINT orders_order_status_id_fk
  FOREIGN KEY (order_status_id)
  REFERENCES payment_status (id);

ALTER TABLE orders
  ADD CONSTRAINT orders_payment_method_id_fk
  FOREIGN KEY (payment_method_id)
  REFERENCES payment_method (id);

ALTER TABLE orders
  ADD CONSTRAINT orders_address_id_fk
  FOREIGN KEY (address_id)
  REFERENCES address (id);

-----------------------------------------------------------------------------------

ALTER TABLE order_products
  ADD CONSTRAINT order_products_order_id_fk
  FOREIGN KEY (order_id)
  REFERENCES orders (id);

ALTER TABLE order_products
  ADD CONSTRAINT order_products_product_id_fk
  FOREIGN KEY (product_id)
  REFERENCES products (id);
  