@extends('front.template.master')

@section('title', $PageInfo->MetaTitle)

@section('description', $PageInfo->MetaDescription)

@section('keywords', $PageInfo->MetaKeyword)

@section('url', url('/'.$PageInfo->Alias))

@section($PageInfo->Alias, 'active')

@section('images', url('images/page/'.$PageInfo->Images))

@section('content')
    
<div class="contact_wrap">
  <div class="container">
    <div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="contact_page">
          <div class="heading">
            {{$PageInfo->Name}}
          </div>
          <div class="contact_description">
            @if(isset($searchList) && $searchList != NULL)
            <ul class="news_cat_wrap">
              @foreach($searchList as $k => $v)
              <li>
                <a href="{{url('/'.$v->Alias)}}.html" title="{{$v->Name}}">
                  <img src="{{url('images/news/'.$v->Images)}}" alt="{{$v->Name}}" />
                  <b>{{ str_limit($v->Name, $limit = 55, $end = '...') }}</b>
                  <p>
                    {{ str_limit($v->SmallDescription, $limit = 100, $end = '...') }}
                  </p>
                  
                </a>
              </li>
              @endforeach
            </ul>
            <div class="page_pagination">
              {{ $searchList->links() }}
            </div>   
            @else
            <p class="search_error">
              <i class="fas fa-exclamation-circle fa-fw"></i>
              Không tìm thấy kết quả nào
            </p> 
            @endif
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </div>
</div>



@stop