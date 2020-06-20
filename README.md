The following code is for creating a website that shows a new picture every time the user accessing the page.
Code used is PHP.

The page will first show picture of a product Sofa 2 Dudukan Vienna. When the user refresh the page, it will show a new picture of a product. The same picture will not be shown unless the user have seen all the product or the session have end.

The products is stored in a database in a table called "items"

The order of the shown picture is based on their similarity, in this case is the dimension of the product, where it have been ordered manually.

The page will have a session that last for 5 minutes, where after that the page will reset / show the first picture again.
