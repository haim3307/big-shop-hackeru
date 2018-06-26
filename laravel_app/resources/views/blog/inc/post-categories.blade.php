<ul @isset($separator) class="post-categories f-row" style="display: inline-flex !important;" @else class="post-categories" @endif>
    @foreach($post->categories as $postCategory)
        <li><a href="{{url("blog/category/$postCategory->url")}}"
               rel="category tag">{{ucwords($postCategory->name)}}</a></li>{{$post->categories->count() > 1?$separator??'':''}}
    @endforeach
</ul>