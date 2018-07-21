{{--<div class="mainSlide">
    <div class="fade"
         id="mainSlider"  --}}{{--data-flickty='{"imagesLoaded": true",pageDots": false,"autoPlay": true}'--}}{{-->
        @php($firstMainSlide = true)
        @foreach ($lists['main_slide'] as $headItem)
            @isset($headItem->id)
                @php($headEntityItem = $headItem->entityItem)
                <div class="gallery-cell" @isset($headItem->options->slide_background->value) style="@if(!$firstMainSlide) display:none; @endif background-position: center;background-size: cover;" data-flickity-bg-lazyload="{{asset('_img/head-slide/backgrounds/'.$headItem->options->slide_background->value)}}" @endisset
                >
                    <div class="mainSlideItem" id="mainSlideItem1" style="background-color: rgba(255, 255, 255, 0.4);">
                        <div class="container-1112 justify-content-around flex-column d-flex d-sm-grid">
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
</div>--}}
<div class="owl-carousel owl-theme owl-hide beforeLoad" id="mainSlideOwl" style="min-height: 600px;  max-width: 99.1vw;
">
    @foreach ($lists['main_slide'] as $headItem)
        @isset($headItem->id)
            @php($headEntityItem = $headItem->entityItem)
            <div class="owlHomeItem owl-lazy d-flex align-items-center d-lg-block owl-hide" style="height: 86vh; max-height: 600px; background-position: center;background-size: cover;"
                    @isset($headItem->options->slide_background->value) data-src="{{asset('_img/head-slide/backgrounds/'.$headItem->options->slide_background->value)}}" @endisset>
                <div class="col p-5 p-lg-1" style="background-color: rgba(255, 255, 255, 0.4);">
                    <div class="container-1112 justify-content-around align-items-center align-items-lg-stretch flex-column d-flex d-lg-grid">
                        <h2 class="g-col-1 text-center text-lg-left" style="font-size: 2em"
                            dir="ltr">{!! $headItem->title??$headEntityItem->title !!}</h2>
                        <div class="mainSlidePImgFrame"><img class="img-fluid owl-lazy"
                                                             data-src="{{asset(isset($headItem->options->slide_img->value)?'_img/head-slide/'.$headItem->options->slide_img->value:'_img/products/'.$headEntityItem->c_url.'/'.$headEntityItem->main_img)}}"
                                                             alt=""></div>
                        <div class="p g-col-1" dir="ltr" style="font-size: 11pt;">
                            <div class="d-none d-sm-block">{!! !empty($headItem->options->slide_description->value)?$headItem->options->slide_description->value:$headEntityItem->description !!}</div>
                            <a class="shopNow m-auto m-lg-0 mt-lg-5" href="{{url("shop/$headEntityItem->c_url/$headEntityItem->url")}}">Shop
                                Now <img src="{{asset('_img/head-slide/shop-right-arrow.png')}}" alt="" style="max-width: 15px"></a>

                        </div>

                    </div>
                </div>
            </div>
        @endisset
    @endforeach

</div>