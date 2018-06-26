@extends('layouts.master')
@section('head')
    <link rel='stylesheet' id='exgym-style-css'  href={{asset('css/specialTemp.css')}} type='text/css' media='all' />

    <style>
        .widget-woof .woof_container .widget h4, .widget .widget-title, .widget .widget-woof .woof_container h4, .widget .widgettitle {
            font-size: 18px;
            line-height: 22px;
            font-weight: 700;
            padding: 0 0 21px 0;
            margin: 0;
            margin-bottom: 32px !important;
            color: #000;
            font-family: Exo\ 2;
            text-transform: uppercase;
            border-bottom: 1px solid #ececec;
            position: relative;
        }
    </style>

@endsection
@section('content')
    <div id="page" class="hfeed site page-home-1" style="background-color:#fff;">
        <section id="main" class="site-main">
            <section id="main-container" class="container inner mainright">
                <div class="f-row">
                    @include('blog.side-bar')


                    <div id="main-content" class="main-content col-sm-12 col-xs-12 col-lg-9 col-md-9">
                        <div id="primary" class="content-area">
                            <div id="content" class="site-content" role="main">

                                @if($posts->count())
                                <div class="g-row" style="grid-gap: 20px;">
                                    @foreach($posts as $post)
                                        @include('items.post')
                                    @endforeach
                                </div>
                                    @else
                                    <h3 class="text-center">No posts were found..</h3>
                                @endif

                                <nav class="navigation paging-navigation clearfix" role="navigation">
                                    <h1 class="screen-reader-text">Posts navigation</h1>
                                    <div style="padding: 15px;">{!! $posts->render("pagination::bootstrap-4") !!}</div>

                                    <!-- .pagination -->
                                </nav>
                                <!-- .navigation -->

                            </div>
                            <!-- #content -->
                        </div>
                        <!-- #primary -->
                    </div>
                    <!-- #main-content -->

                </div>
            </section>
        </section>
        <!-- #main -->
    </div>
@endsection
@section('script')
    <script type='text/javascript'
            src='http://demo3.wpopal.com/exgym/wp-includes/js/jquery/jquery.js?ver=1.12.4'></script>
    <script type='text/javascript'
            src='http://demo3.wpopal.com/exgym/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1'></script>
    <script type='text/javascript'
            src='http://demo3.wpopal.com/exgym/wp-content/plugins/revslider/public/assets/js/jquery.themepunch.tools.min.js?ver=5.4'></script>
    <style>
        .f-row {
            display: flex !important;
            flex-wrap: wrap;
        }
        #addedToCartModal{
            display: none !important;
        }
    </style>
    <script>
			function tpl() {

			}

			function tplJQ() {

				load.js('http://demo3.wpopal.com/exgym/wp-content/plugins/kingcomposer/includes/frontend/vendors/waypoints/waypoints.min.js?ver=2.6.17').then(function () {
					load.js('http://demo3.wpopal.com/exgym/wp-content/plugins/kingcomposer/assets/frontend/js/counter.up.min.js?ver=2.6.17');


				});
			}
    </script>
@endsection
