<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\{
    Brand,Category
};

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        view()->composer('*', function ($view) {
            $view->with([
                'store_name'=>'Big-Shop',
                'defaultMetaDesc'=>"Life Style Store with sports , camping ,gaming and playground products , Choose Your life style at big store",
            ]);
        });
        if (!config('app.is_local') && strpos($request->url(), 'http:') !== false)
        {
            $url = str_replace('http:', 'https:', $request->fullUrl());
            $request = Request::create($url);
        }

        if (!$request->hasValidSignature()) {
            return abort(403);
        }
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {

    }
}
