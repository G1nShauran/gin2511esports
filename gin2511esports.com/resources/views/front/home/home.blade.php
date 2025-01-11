@extends('front.template.master')

@section('title', $PageInfo->MetaTitle)

@section('description', $PageInfo->MetaDescription)

@section('keywords', $PageInfo->MetaKeyword)

@section('url', url('/'))

@section('home', 'active')

@section('images', url('images/page/'.$PageInfo->Images))

@section('content')
    
    <div class="home_page">
    	<div class="slider_wrap">
    		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			  <!-- Wrapper for slides -->
			  <div class="carousel-inner" role="listbox">
			  	@if(isset($Slider) && count($Slider) > 0)
			  	@foreach($Slider  as $k => $v)
			    <div class="item @if($k == 0) active @endif">
			    	<a href="{{$v->Alias}}" title="{{$v->Name}}">
			    		<img src="{{url('images/slider/'.$v->Images)}}" alt="{{$v->Name}}">
			    	</a>
			    </div>
			    @endforeach
			    @endif
			  </div>

			  <!-- Controls -->
			  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
			    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
			    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>
    	</div>

		<div class="container">
	      	<div class="row">
	        	<div class="col-xs-12 col-sm-12 col-md-12">
	        		<div class="home_top">
	        			<div class="home_top_left">
	        				<div class="heading">
	        					Tin MOBA mới nhất
	        				</div>
	        				<ul>
	        					@if(isset($News) && count($News) > 0)
	        					@foreach($News as$k => $v)
	        					<li>
	        						<a href="{{url('/'.$v->Alias)}}.html" title="{{$v->Name}}">
	        							<img src="{{url('images/news/'.$v->Images)}}" alt="{{$v->Name}}" />
	        							<b>{{ str_limit($v->Name, $limit = 55, $end = '...') }}</b>
	        							<p>
	        								{{ str_limit($v->SmallDescription, $limit = 65, $end = '...') }}
	        								
	        							</p>
	        						</a>
	        					</li>
	        					@endforeach
	        					@endif
	        				</ul>
	        			</div>
	        			<div class="home_top_right">
	        				<div class="heading">
	        					Về chúng tôi
	        				</div>
	        				<img src="{{url('public/images/S1mple-CS-GO.jpeg')}}" alt="About" />
	        				<b>Oleksandr “s1mple” Kostyliev</b>
	        				<p><strong>Oleksandr Kostyliev</strong> (Ukrainian: Олександр Олегович Костилєв; born 2 October 1997), better known as s1mple, is a Ukrainian professional Counter-Strike: Global Offensive player for Natus Vincere. He is considered to be one of the best players in Global Offensive history. 
	        					<a href="{{url('ve-chung-toi')}}" title="Xem thêm"> Read more</a>
	        				</p>
	        				<div class="home_social">
	        					@if(isset($Social) && count($Social) > 0)
					            @foreach($Social as $k => $v)
					            <a href="{{$v->Alias}}" title="{{$v->Name}}">
					              {!!$v->Font!!}
					            </a>
					            @endforeach
					            @endif
	        				</div>
	        			</div>
	        		</div>
	    		</div>
	    	</div>
    	</div>

    	<div class="container">
    		<div class="row">
    			<div class="col-xs-12 col-sm-12 col-md-12">
    				<div class="home_center">
	    				<div class="heading">
		        			Tin FPS mới nhất
		        		</div>
		        		<ul>
		        			@if(isset($News2) && count($News2) > 0)
	        				@foreach($News2 as$k => $v)
							<li>
								<a href="{{url('/'.$v->Alias)}}.html" title="{{$v->Name}}">
									<img src="{{url('images/news/'.$v->Images)}}" alt="{{$v->Name}}" />
									<b>{{ str_limit($v->Name, $limit = 53, $end = '...') }}</b>
									<p>
										{{ str_limit($v->SmallDescription, $limit = 65, $end = '...') }}
										
									</p>
								</a>
							</li>
							@endforeach
	        				@endif
						</ul>
	        		</div>
    			</div>
    			
	        </div>
	    </div>


	    <div class="container">
    		<div class="row">
    			<div class="col-xs-12 col-sm-12 col-md-12">
    				<div class="home_bottom">
	    				<div class="heading">
		        			Xem nhiều nhất
		        		</div>
		        		<ul>
		        			@if(isset($NewsViews) && count($NewsViews) > 0)
					        @foreach($NewsViews as$k => $v)
		    				<li>
			        			<a href="{{url('/'.$v->Alias)}}.html" title="{{$v->Name}}">
									<img src="{{url('images/news/'.$v->Images)}}" alt="{{$v->Name}}" />
									<b>{{ str_limit($v->Name, $limit = 53, $end = '...') }}</b>
									<p>
										{{ str_limit($v->SmallDescription, $limit = 65, $end = '...') }}
										
									</p>
								</a>	
		    				</li>
		    				@endforeach
					        @endif
		    			</ul>
	    			</div>
    			</div>
    			
    			
	        </div>
	    </div>

    </div>

@stop