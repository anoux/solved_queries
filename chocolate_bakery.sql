/*Chocolate

I love chocolate and only want delicious baked goods that have chocolate in them!

Write a Query to return bakery items that contain the word "Chocolate".

*/

CREATE TABLE bakery_items (
product_name text
);

INSERT INTO bakery_items
VALUES
('Double Chocolate Doughnut'),
('Sweet Loaf'),
('Croissant'),
('Chocolate Banana Muffin'),
('Glazed Doughnut'),
('Cinnamon Roll'),
('Cheese Danish'),
('Peanut Butter Chocolate Pound Cake'),
('Fruit Tart')
;

SELECT * FROM bakery_items WHERE product_name LIKE '%chocolate%';
