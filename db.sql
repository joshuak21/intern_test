CREATE TABLE items (
	item_id int(2) NOT NULL,
    item_name text NOT NULL,
    item_price int(10) NOT NULL,
    item_dimension varchar(15) NOT NULL,
    item_colour text NOT NULL,
    item_material text NOT NULL,
    item_url text NOT NULL,
    PRIMARY KEY (item_id)
);

INSERT INTO `items` (`item_id`, `item_name`, `item_price`, `item_dimension`, `item_colour`, `item_material`, `item_url`) VALUES
(1, 'Sofa 2 Dudukan Vienna', 3899000, '162 x 95 x 86', 'Custard Vienna, Graphite Vienna, Ruby Vienna', 'Solid Wood', 'https://fabelio.com/media/catalog/product/w/i/wina_2_seater_sofa__custard__1_1.jpg\r\n'),
(2, 'Sofa 2 Dudukan Zelado', 4299000, '162 x 95 x 86', 'Graphite Vienna, Teal Vienna', 'Hollow Steel', 'https://fabelio.com/media/catalog/product/z/e/zelado-2-seater-sofa---custard-01.jpg'),
(3, 'Sofa 2 Dudukan Toril', 2899000, '160 x 95 x 90', 'Blue Jay, Ruby Vienna', 'Solid Wood', 'https://fabelio.com/media/catalog/product/t/o/Toril_2_Seater_Sofa_(Paradise)_1.jpg'),
(4, 'Sofa Tempat Tidur Mochi', 3500000, '160 x 95 x 90', 'Custard Vienna, Graphite Vienna, Ruby Vienna', 'Solid Wood', 'https://fabelio.com/media/catalog/product/r/2/r2710.jpg'),
(5, 'Sofa Tempat Tidur Deacon', 3299000, '150 x 90 x 80', 'Custard Vienna, Graphite Vienna', 'Hollow Steel', 'https://fabelio.com/media/catalog/product/d/e/deacon_white_1_1_1.jpg'),
(6, 'Sofa Java', 3869100, '142 x 90 x 80', 'Custard Vienna, Graphite Vienna', 'Solid Wood', 'https://fabelio.com/media/catalog/product/t/a/Taby_Java_2_Seater_Living_Set_(Sugar)_1.jpg'),
(7, 'Sofa 1 Dudukan Hughes', 2500000, '90 x 82 x 58', 'Custard Vienna, Graphite Vienna, Ruby Vienna', 'Solid Wood', 'https://fabelio.com/media/catalog/product/h/u/Hughes_Armchair_(Wood)_0.jpg'),
(8, 'Sofa 1 Dudukan Taby', 2399000, '90 x 82 x 58', 'Brown Vienna, Ruby Vienna', 'Solid Wood', 'https://fabelio.com/media/catalog/product/t/a/Taby_Armchair_(Jezebel)_1.jpg'),
(9, 'Sofa 1 Dudukan Zoey', 2399000, '90 x 82 x 58', 'Brown Vienna, Ruby Vienna', 'Hollow Steel', 'https://fabelio.com/media/catalog/product/k/u/Kursi_Zoey_Armchair_(Brown)_0.jpg'),
(10, 'Sofa 1 Dudukan Vienna', 2199000, '90 x 82 x 58', 'Custard Vienna, Graphite Vienna, Ruby Vienna', 'Solid Wood', 'https://fabelio.com/media/catalog/product/w/i/wina_armchair__graphite__1_1.jpg');

ALTER TABLE `items`
  MODIFY `item_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

SELECT * FROM items