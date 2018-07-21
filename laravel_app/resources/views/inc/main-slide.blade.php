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
@push('styles')
    <style>
        .owlHomeItem p a, .owlHomeItem .p a ,.shopNow{
            margin-top: 31px;
            border-radius: 10px;
            background-color: #d70a0a;
            color: white;
            text-decoration: none;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-pack: distribute;
            justify-content: space-around;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
            width: 163px;
            height: 45px;
        }
        @media (min-width: 992px) {
            .owlHomeItem .container-1112{
                display: grid;
                grid-template-rows: 50px 1fr;
                grid-template-columns: 1fr 1fr;
                grid-row-gap: 22px;
                direction: rtl;
                padding: 55px 0;
                min-height: 600px;
            }
            #mainSlideOwl{
                transform: translateY(27px) scaleY(1.093);
            }
        }
        .img{
            display: inline;
            width: initial;
        }
        .owl-carousel .owl-item img {
            display: inline;
            width: initial;
        }
        @media(max-width: 992px) {
            .img-fluid{
                max-height: 30vh;
                width: auto;
                max-width: initial;
            }

        }
    </style>
@endpush
<div class="owl-carousel owl-theme owl-hide" id="mainSlideOwl" style="  max-width: 99.1vw;
">
    @foreach ($lists['main_slide'] as $headItem)
        @isset($headItem->id)
            @php($headEntityItem = $headItem->entityItem)
            <div class="owlHomeItem owl-lazy d-flex align-items-center d-lg-block" style="height: 86vh; max-height: 600px; background-position: center;background-size: cover;"
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