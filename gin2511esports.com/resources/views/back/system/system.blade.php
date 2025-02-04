@extends('back.template.master')

@section('title', 'Cấu hình hệ thống')

@section('heading', 'Cấu hình hệ thống')

@section('system', 'active')

@section('content')
    
    <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              
              <!-- form start -->
              <form role="form" action="{{url('admin/system')}}" method="POST" enctype="multipart/form-data">
                <div class="card-body">
                	{!! csrf_field() !!}

                  
	              <div class="form-group">
                    <label for="exampleInputEmail1">Tên công ty <span class="color_red">*</span></label>
                    <input type="text" class="form-control" name="name" value="{{$name->Description}}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Logo</label><br/>
                    <img src="{{url('images/logo/'.$logo->Description)}}" alt="Logo" />
                    <input type="file" class="form-control" name="logo">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email <span class="color_red">*</span></label>
                    <input type="email" class="form-control" name="email" value="{{$email->Description}}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Số điện thoại <span class="color_red">*</span></label>
                    <input type="text" class="form-control" name="phone" value="{{$phone->Description}}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Địa chỉ</label>
                    <input type="text" class="form-control" name="address" value="{{$address->Description}}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Google map</label>
                    <textarea class="form-control" name="map" rows="6">{{$map->Description}}</textarea>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Copyright</label>
                    <input type="text" class="form-control" name="copyright" value="{{$copyright->Description}}">
                  </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Chỉnh sửa</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
          </div>
@stop