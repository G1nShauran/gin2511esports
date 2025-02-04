@extends('back.template.master')

@section('title', 'Quản lí trang')

@section('heading', 'Chỉnh sửa trang')

@section('page', 'active')

@section('content')
    
    <div class="col-md-12">
      <div class="card-header">
        <a  class="btn btn-block btn-danger" href="{{url('admin/page/list')}}" title="Thêm">
          Quay lại
        </a>
      </div>
            <!-- general form elements -->
            <div class="card card-primary">
              
              <!-- form start -->
              <form role="form" action="{{url('admin/page/edit/'.$Page->RowID)}}" method="POST" enctype="multipart/form-data">
                <div class="card-body">
                	{!! csrf_field() !!}

                  <div class="form-group">
                    <select class="form-control" name="Status">
                      <option value="1" @if($Page->Status == 1) Selected="" @endif>
                        Trạng thái: Bật
                      </option>
                      <option value="0" @if($Page->Status == 0) Selected="" @endif>
                        Trạng thái: Tắt
                      </option>
                    </select>
                  </div>

                  

                	<div class="form-group">
                    <label for="exampleInputEmail1">Tên trang <span class="color_red">*</span></label>
                    <input type="text" class="form-control" name="Name" value="{{$Page->Name}}" id="title" onkeyup="ChangeToSlug();">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Đường dẫn </span></label>
                    <input type="text" class="form-control" name="Alias" id="slug" value="{{$Page->Alias}}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Ảnh đại diện </span></label>
                    @if($Page->Images != NULL)
                    <br/>
                    <img src="{{url('images/page/'.$Page->Images)}}" alt="Avatar" />
                    @endif
                    <input type="file" class="form-control" name="Images">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Font </span></label>
                    <input type="text" class="form-control" name="Font" value="{{$Page->Font}}">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Sắp xếp</label>
                    <input type="number" class="form-control" name="Sort" value="{{$Page->Sort}}">
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Thẻ meta title </label>
                    <textarea name="MetaTitle" rows="2" class="form-control">{{$Page->MetaTitle}}</textarea>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Thẻ meta description </label>
                    <textarea name="MetaDescription" rows="4" class="form-control">{{$Page->MetaDescription}}</textarea>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Thẻ meta keyword </label>
                    <textarea name="MetaKeyword" rows="2" class="form-control"> {{$Page->MetaKeyword}}</textarea>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Mô tả tin <span class="color_red">*</span></label>
                    <textarea name="Description" rows="8" class="form-control" id="ckeditor">{{$Page->Description}}</textarea>
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