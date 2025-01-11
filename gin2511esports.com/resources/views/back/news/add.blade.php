@extends('back.template.master')

@section('title', 'Quản lí danh sách tin')

@section('heading', 'Thêm tin tức')

@section('news', 'active')

@section('content')
    
    <div class="col-md-12">
      <div class="card-header">
        <a  class="btn btn-block btn-danger" href="{{url('admin/news/list')}}" title="Thêm">
          Quay lại
        </a>
      </div>
            <!-- general form elements -->
            <div class="card card-primary">
              
              <!-- form start -->
              <form role="form" action="{{url('admin/news/add')}}" method="POST" enctype="multipart/form-data">
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
                    <select class="form-control" name="RowIDCat">
                      @if(isset($NewsCategory) && count($NewsCategory) > 0)
                      @foreach($NewsCategory as $k=>$v)
                      <option value="{{$v->RowID}}">
                        Danh mục: {{$v->Name}}
                      </option>
                      @endforeach
                      @endif
                    </select>
                  </div>

                
                	<div class="form-group">
                    <label for="exampleInputEmail1">Tên tin tức <span class="color_red">*</span></label>
                    <input type="text" class="form-control" name="Name" id="title" onkeyup="ChangeToSlug();">
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Đường dẫn </span></label>
                    <input type="text" class="form-control" name="Alias" id="slug">
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Thẻ meta title </label>
                    <textarea name="MetaTitle" rows="2" class="form-control"></textarea>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Thẻ meta description </label>
                    <textarea name="MetaDescription" rows="4" class="form-control"></textarea>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Thẻ meta keyword </label>
                    <textarea name="MetaKeyword" rows="2" class="form-control"></textarea>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Lượt xem </label>
                    <input type="number" name="Views" value="1" class="form-control" />
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Giới thiệu ngắn </label>
                    <textarea name="SmallDescription" rows="3" class="form-control"></textarea>
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Ảnh đại diện </label>
                    <input type="file" name="Images" class="form-control" />
                  </div>

                  <div class="form-group">
                    <label for="exampleInputEmail1">Mô tả tin <span class="color_red">*</span></label>
                    <textarea name="Description" rows="8" class="form-control" id="ckeditor"></textarea>
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