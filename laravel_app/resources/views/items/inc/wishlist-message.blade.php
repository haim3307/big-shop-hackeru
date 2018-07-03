@if(Session::get('addedToWishList') && Session::get('addedToWishList') == $product->id) <div class="addedToWishMessage itemMessage">{{$message??'Added to wish list!'}}</div> @endif
