<div onclick="window.location = '{{url("shop/$frameItem->c_url??{$frameItem->mainCategory->url}/$frameItem->url")}}'"
     class="frameItem dragItem carousel-cell">
    <div class="g-col-2 centered-g-items allCentered"
         style="overflow:hidden;background-color:#fff; height: 145px;">
        <img style="max-width: 100%;"
        {{isset($noSlideMode)?'src':'data-flickity-lazyload'}}="{{asset('_img/products/'.($frameItem->c_url??$frameItem->mainCategory->url).'/'.$frameItem->main_img)}}"
        alt="">
    </div>
    <h3 class="my-text-overflow">{{ucfirst($frameItem->title)}}</h3>
    <div class="frameItemPrices">
        @if(isset($frameItem->prev_price))
            <s style=" margin-right: 20px">${{$frameItem->prev_price}}</s>
        @endif
        <span style="color: #d70a0a;">${{$frameItem->price}}</span>
    </div>
    <a class="allCentered addToCartB"
       @include('inc.print-object',['product'=> $frameItem->getAttributes()]) href="">
        <div class="allCentered"><img
                    src="{{asset('_img/Shopping%20Cart%203.png')}}" alt=""></div>
    </a>
</div>