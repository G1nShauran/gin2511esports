@extends('back.template.master')

@section('title', 'Quản lí slide')

@section('heading', 'Thêm slide')

@section('slider', 'active')

@section('content')
    
    <div class="col-md-12">
      <div class="card-header">
        <a  class="btn btn-block btn-danger" href="{{url('admin/slider/list')}}" title="Thêm">
          Quay lại
        </a>
      </div>
            <!-- general form elements -->
            <div class="card card-primary">
              
              <!-- form start -->
              <form role="form" action="{{url('admin/slider/add')}}" method="POST" enctype="multipart/form-data">
                <div class="card-body">
                	{!! csrf_field() !!}

                  <div class="form-group">
                    <select class="form-control" name="Status">
                      <option value="1">
                        Trạng thái: Bật
                      </option>
                      <option value="0">
                        Trạng thái: Tắt
                      </option>
                    </select>
                  </div>
                
                	<div class="form-group">
                    <label for="exampleInputEmail1">Tên slide <span class="color_red">*</span></label>
                    <input type="text" class="form-control" name="Name">
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Đường dẫn <span class="color_red">*</span></label>
                    <input type="text" class="form-control" name="Alias">
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Sắp xếp </label>
                    <input type="number" name="Sort" value="1" class="form-control" />
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Ảnh đại diện </label>
                    <input type="file" name="Images" class="form-control" />
                  </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Thêm</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
          </div>
@stop