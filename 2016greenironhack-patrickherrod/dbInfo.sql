CREATE TABLE fruits (
food_id INT NOT NULL AUTO_INCREMENT,
food_name VARCHAR(100) NOT NULL,
jan CHAR NOT NULL,
feb CHAR NOT NULL,
mar CHAR NOT NULL,
apr CHAR NOT NULL,
may CHAR NOT NULL,
jun CHAR NOT NULL,
jul CHAR NOT NULL,
aug CHAR NOT NULL,
sep CHAR NOT NULL,
oct CHAR NOT NULL,
nov CHAR NOT NULL,
dcm CHAR NOT NULL,
PRIMARY KEY (food_id)
);

/*
Data from
Indiana (purdue): https://extension.purdue.edu/foodlink/foods.php?category=2&sort=asc
Illinois: https://www.agr.state.il.us/wherefreshis/whatsinseason.pdf
Ohio: https://ofbf.org/whats-in-season/
*/
insert into fruits (food_name, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dcm) values
('apples', 'M', 'M', 'M', 'M', 'M', 'S', 'S', 'S', 'S', 'S', 'S', 'M'),
('berries', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O', 'O'),
('blackberries', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'O', 'O', 'O'),
('blueberries', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O', 'O'),
('cantaloupe', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O'),
('cherries', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'O', 'O', 'O', 'O', 'O'),
('curants', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'O', 'O', 'O', 'O', 'O'),
('gooseberries', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'O', 'O', 'O', 'O', 'O'),
('grapes', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O'),
('melons', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'O', 'O'),
('nectarines', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'S', 'O', 'O'),
('peaches', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O', 'O'),
('pears', 'S', 'M', 'M', 'M', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S'),
('plums', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'O', 'O'),
('raspberries', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O', 'O'),
('strawberries', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'O', 'O', 'O', 'O'),
('tomatoes', 'O', 'O', 'M', 'M', 'S', 'S', 'S', 'S', 'S', 'S', 'O', 'O'),
('watermelon', 'M', 'M', 'M', 'M', 'M', 'M', 'S', 'S', 'S', 'S', 'M', 'M');

select food_name from fruits where jan != 'O';


CREATE TABLE veggies (
food_id INT NOT NULL AUTO_INCREMENT,
food_name VARCHAR(100) NOT NULL,
jan CHAR NOT NULL,
feb CHAR NOT NULL,
mar CHAR NOT NULL,
apr CHAR NOT NULL,
may CHAR NOT NULL,
jun CHAR NOT NULL,
jul CHAR NOT NULL,
aug CHAR NOT NULL,
sep CHAR NOT NULL,
oct CHAR NOT NULL,
nov CHAR NOT NULL,
dcm CHAR NOT NULL,
PRIMARY KEY (food_id)
);

insert into veggies (food_name, jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dcm) values
('asparagus', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'O', 'O', 'O', 'O', 'O'),
('artichoke', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'O', 'O', 'O', 'O'),
('beans', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'O', 'O', 'O'),
('beets', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'O'),
('bell pepper', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'O'),
('broccoli', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'S', 'O', 'O'),
('brussels sprouts', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'O'),
('cabbage', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'S', 'O', 'O'),
('carrots', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'O'),
('cauliflower', 'O', 'O', 'O', 'O', 'S', 'S', 'O', 'O', 'O', 'O', 'O', 'O'),
('cilantro', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'O', 'O'),
('collard greens', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'O', 'O', 'O', 'O', 'O'),
('cucumber', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O', 'O'),
('dill', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'O', 'O'),
('dill seeds', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O', 'O'),
('eggplant', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'O', 'O'),
('garlic', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S','S', 'S', 'O'),
('green peas', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'O', 'O', 'O', 'O', 'O'),
('herbs', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'Oh'),
('hot peppers', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'O', 'O'),
('kale', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O'),
('kohlrabi', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S'),
('lettuce', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'O', 'O', 'O', 'O', 'O'),
('leeks', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O', 'O', 'O'),
('lima beans', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'O', 'O'),
('mushrooms', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'O'),
('mustard greens', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'S', 'O', 'O'),
('okra', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'O', 'O'),
('onions', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'O'),
('parsley', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O'),
('parsnips', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'O', 'O'),
('potatoes', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O'),
('pumpkin', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'O', 'O'),
('radish', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S'),
('rhubarb', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O', 'O', 'O', 'O'),
('snap bean', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'O', 'O'),
('spinach', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S', 'S'),
('squash', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O'),
('sweet corn', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'S', 'O', 'O'),
('sweet pepper', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'O', 'O', 'O'),
('sweet potato', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S'),
('tomatoes', 'O', 'O', 'M', 'M', 'S', 'S', 'S', 'S', 'S', 'S', 'O', 'O'),
('turnip', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'O', 'S', 'S', 'O', 'O'),
('turnip greens', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'S', 'O', 'O'),
('zucchini', 'O', 'O', 'O', 'O', 'S', 'S', 'S', 'S', 'S', 'S', 'O', 'O');

select * from fruits;

