<script>
	//load-vue
	load.js('https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.min.js').then(function () {
		Vue.prototype.url = BASE_URL;
		//if(typeof beforeApp !== "undefined"){        }
        load.js('https://js.stripe.com/v3/').then(function () {
            load.js(BASE_URL + '/js/app.min.js').then(function () {
                    VueComponents();
                    tpl();
                    tplVue();
                    vueShopCart(shopAppOBJ);
                    if(window.clearCart){
                        localStorage.setItem('cartItems', []);
                        shopAppOBJ.data.cartItems = [];
                        localList = [];
                    }
                    shopAppOBJ.data.autoCompleteFrontList = [];
                    shopAppOBJ.data.quickProduct = {};
                    function animatedLoop(el) {
                    if(!el.classList) return;
                    el.classList.remove('animate-loaded-hide');
                    setTimeout(function () {
                        if(el.nextElementSibling && el.parentElement.classList.contains('animated-loop')) animatedLoop(el.nextElementSibling);
                        else document.querySelectorAll('.animate-loaded-hide').forEach(function(el) {
                            el.classList.remove('animate-loaded-hide');
                        });
                    },200);
                    }
                    shopAppOBJ.methods.animatedLoop = animatedLoop;
                var shopApp = new Vue(shopAppOBJ);

                Vue.nextTick(function (e) {
                       load.css('https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.6.2/animate.min.css').then(function () {
                           document.querySelectorAll('.animate-loaded').forEach(function(el) {
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