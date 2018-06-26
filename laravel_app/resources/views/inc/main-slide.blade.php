<div class="mainSlide">
    <div class="fade"
         id="mainSlider"  {{--data-flickty='{"imagesLoaded": true",pageDots": false,"autoPlay": true}'--}}>
        @php($firstMainSlide = true)
        @foreach ($lists['main_slide'] as $headItem)
            @isset($headItem->id)
                @php($headEntityItem = $headItem->entityItem)
                <div class="gallery-cell" @isset($headItem->options->slide_background->value) style="@if(!$firstMainSlide) display:none; @endif background-position: center;background-size: cover;" data-flickity-bg-lazyload="{{asset('_img/head-slide/backgrounds/'.$headItem->options->slide_background->value)}}" @endisset
                >
                    <div class="mainSlideItem" id="mainSlideItem1" style="background-color: rgba(255, 255, 255, 0.4);">
                        <div class="container-1112">
                            <h2 class="g-col-1" style="font-size: 2em"
                                dir="ltr">{!! $headItem->title??$headEntityItem->title !!}</h2>
                            <div class="mainSlidePImgFrame"><img class="img-fluid"
                                                                 data-flickity-lazyload="{{asset(isset($headItem->options->slide_img->value)?'_img/head-slide/'.$headItem->options->slide_img->value:'_img/products/'.$headEntityItem->c_url.'/'.$headEntityItem->main_img)}}"
                                                                 alt=""></div>
                            <div class="p g-col-1" dir="ltr" style="font-size: 11pt;">
                                {!! !empty($headItem->options->slide_description->value)?$headItem->options->slide_description->value:$headEntityItem->description !!}
                                <a href="{{url("shop/$headEntityItem->c_url/$headEntityItem->url")}}">Shop
                                    Now <img src="{{asset('_img/head-slide/shop-right-arrow.png')}}" alt=""></a>

                            </div>

                        </div>
                    </div>
                </div>
                @php($firstMainSlide = false)
            @endisset

        @endforeach
    </div>
</div>
