@extends('back.template.master')

@section('title', 'Thông tin tài khoảng')

@section('heading', 'Thông tin tài khoảng')

@section('content')
    
    <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              
              <!-- form start -->
              <form role="form" action="{{url('admin/staff/profile')}}" method="POST">
                <div class="card-body">
                	{!! csrf_field() !!}
                  <input type="hidden" name="id" value="{{Auth::user()->id}}" />
                	<div class="form-group">
                    <label for="exampleInputEmail1">Họ và tên <span class="color_red">*</span></label>
                    <input type="text" class="form-control" name="fullname" value="{{Auth::user()->fullname}}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email <span class="color_red">*</span></label>
                    <input type="email" class="form-control" name="email" value="{{Auth::user()->email}}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Số điện thoại <span class="color_red">*</span></label>
                    <input type="text" class="form-control" name="phone" value="{{Auth::user()->phone}}">
                  </div>
                   <div class="form-group">
                    <label for="exampleInputEmail1">Địa chỉ</label>
                    <input type="text" class="form-control" name="address" value="{{Auth::user()->address}}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Tài khoảng</label>
                    <input type="text" class="form-control" name="username" value="{{Auth::user()->username}}" disabled="">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" name="password">
                    <p class="ad_note_password">Để trống nếu không muốn thay đổi</p>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Sửa</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
          </div>
@stop