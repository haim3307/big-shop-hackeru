<script>
    //load-vue\
    function addToCartEvent(e) {
        e.preventDefault();
        e.stopPropagation();
        var id = $(this).data('id');
        var categoryId = $(this).data('category-id');
        var $btn = $(this);
        var product = $btn.data('product') || $btn.get()[0].dataset;
        if (!product) return;
        product.quantity = typeof product.quantity !== "undefined" ? Number(product.quantity) : 1;
        var isExistCartItem = false;
        for (var existingItem in shopAppOBJ.data.cartItems) {
            var item = shopAppOBJ.data.cartItems[existingItem];
            if (item.hasOwnProperty('id') && item.id == id) {
                isExistCartItem = true;
                break;
            }
        }
        if (!isExistCartItem && product) {
            // if (product.main_category && typeof product.main_category === 'string') product.main_category = JSON.parse(product.main_category);
            if (product.main_category) product.c_url = typeof product.main_category === 'string' ? JSON.parse(product.main_category).url : product.main_category.url;
            shopAppOBJ.data.cartItems.push(product);
            shopAppOBJ.data.addedToCart = true;

            if (!$(e.target).hasClass('buyNow')) {
                shopAppOBJ.data.product = product;
                $('#addedToCartModal').modal('show');
                updateCartedButtons(e);
            } else {
                window.location = BASEURL + '/cart';
            }
        } else if ($(e.target).hasClass('buyNow')) {
            window.location = BASEURL + '/cart';

        }

    }

    load.js('https://cdn.jsdelivr.net/npm/vue/dist/vue.js').then(function () {
        Vue.prototype.url = BASE_URL;
        Vue.prototype.cdnByType = {!! json_encode(Config::get('app.cdnByType')) !!};
        //if(typeof beforeApp !== "undefined"){        }
        load.js('https://js.stripe.com/v3/').then(function () {
            load.js(BASE_URL + '/js/app.js').then(function () {
                VueComponents();
                tpl();
                tplVue();
                vueShopCart(shopAppOBJ);
                if (window.clearCart) {
                    localStorage.setItem('cartItems', []);
                    shopAppOBJ.data.cartItems = [];
                    localList = [];
                }
                shopAppOBJ.data.autoCompleteFrontList = [];
                shopAppOBJ.data.quickProduct = {};

                function animatedLoop(el) {
                    if (!el || !el.classList) return;
                    el.classList.remove('animate-loaded-hide');
                    setTimeout(function () {
                        if (el.nextElementSibling && el.parentElement.classList.contains('animated-loop')) animatedLoop(el.nextElementSibling);
                        else document.querySelectorAll('.animate-loaded-hide').forEach(function (el) {
                            el.classList.remove('animate-loaded-hide');
                        });
                    }, 200);
                }

                shopAppOBJ.methods.animatedLoop = animatedLoop;
                var shopApp = new Vue(shopAppOBJ);

                Vue.nextTick(function (e) {
                    reloadSirv();
                    load.css('https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.6.2/animate.min.css').then(function () {
                        document.querySelectorAll('.animate-loaded').forEach(function (el) {
                            el.classList.remove('animate-loaded');
                        });
                        var $els = document.querySelectorAll('.animate-loaded-hide');
                        animatedLoop($els[0]);
                    });
                });
                shopApp.$watch('cartItems', function (newVal, oldVal) {
                    console.log('changed cart-list', newVal);
                    shopAppOBJ.data.cartCount = newVal;
                    localStorage.setItem('cartItems', JSON.stringify(shopAppOBJ.data.cartItems));
                    console.log('saved-on-local:', localStorage.getItem('cartItems'));
                    console.log('running-on-local:', shopAppOBJ.data.cartItems);
                    console.log('newCount:', shopAppOBJ.data.cartCount);
                }, {deep: true});
            })
        });
    });

</script>