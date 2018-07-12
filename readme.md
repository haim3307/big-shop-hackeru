<h1><img src="https://laravel.com/assets/img/components/logo-laravel.svg"> e-commerce shop</h1>
<h4>Shop contains :</h4>
<h5>Main pages:</h5> 
<ul>

<li>Home - present products that the owner whats to put at the head of the site like featured and best sellers.</li>
<li>About - talks about the web shop with content selected by owner and edited from cms.</li>
<li>Deals - present deals for limited times defined by the owner , while deals that expired have their tab.</li>
<li>Sales - deals the the owner wants to give discounts at dynamic times or strict times like seasons.</li>
<li>Contact us - contains content from DB managed by owner and a form to pass messages to the shop team.</li>
<li>Shop - presents the categories of the site .</li>
<li>Category page - presents products of a selected category contains filters , pagination , search and a side menu to select other categories</li>
</ul>
<h5>Extras : </h5>
<ul>
    <li>Search bar at the head of the site to search any category or products using ajax for auto complete.</li>
    <li>Wish List.</li>
    <li>Cart based on localstorage and Vue.js which means no calls to server , user can CRUD without making the server busy which reduces a lot of load.</li>
    <li>Full user profile management :
        <ul>
            <li>Upload profile image</li>
            <li>Edit personal details</li>
            <li>Manage Wish List</li>
            <li>Watch all orders</li>
        </ul>
    </li>
</ul>
<h2>CMS</h2>
<p>Content Managment System contains:</p>
<h5>Main sections:</h5> 
<ul>
    <li><h5>Table Management :</h5>
        <ul>
            <li>Products</li>
            <li>Categories</li>
            <li>Pages</li>
            <li>Posts</li>
            <li>Users</li>
            <li>Tags</li>
            <li>Links</li>
        </ul>
        <br>
    </li>
    <li><h5>Pages Management :</h5>
        <p>Each Core Page is built out of lists ,
                    the home page for example has the featured list of products and a list for the main slider ,
                    a list could be dadicated to one entity like products or to multiple entities like products and categories , 
                    this way the main slide at the home page could contain prodoct items and categories,
                    they could be edited from cms while the owner could use all CRUD on any list of core page,
                    The Main feature of those lists is the owner can drag items to order them the way he sees best.</p>
                    All Page lists managment is built using Vue.js.
                    <h6> Extra Features : </h5>
                    <ul>
                        <li>Split mode : 
                        <p> Owner can chose between between three modes:</p>
                        <ol>
                            <li>Edit mode - where he could order and CRUD.</li>
                            <li>Watch mode - where he could watch the same page on the site using iframe. </li>
                            <li>Both - where he could edit on half screen and edit on the other</li>
                        </ol></li><li>
                        Auto complete items : 
                        Owner can add items using auto complete search that is built on vue js. 
                        
  </li>
                        </ul> <br> 
    </li>
    <li>Menus Managment : <br>
    <h6>Features :</h5>
    <ul>
        <li>Full CRUD - create menu item , read menu , update it and delete items</li>
        <li>Adding entities wordpress style - Owner has a side menu where he could choose what to add from the following entities :
            <ul>
                 <li>Pages</li>
                <li>Products</li>
                <li>Categories</li>
                <li>Custom Links</li>
            </ul>
            <br>
        </li>
            <li>Drag And Drop Menu:
                <p>Like page lists owner can drag a menu item to take it to the end of the list and order the menu the way he wants.
                 </p>
        </li>
        <!--<li>Users</li>
        <li>Tags</li>
        <li>Links</li>-->
    </ul>
</ul>
