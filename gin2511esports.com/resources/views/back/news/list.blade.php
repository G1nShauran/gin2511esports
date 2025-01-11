@extends('back.template.master')

@section('title', 'Quản lí danh sách tin')

@section('heading', 'Danh sách tin tức')

@section('news', 'active')

@section('content')
    
    <div class="col-md-12">
      <!-- general form elements -->
      <div class="card">
        <div class="card-header">
          <a  class="btn btn-block btn-primary" href="{{url('admin/news/add')}}" title="Thêm">
            Thêm
          </a>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
        <table id="example2" class="table table-bordered table-hover">
          <thead>
            <tr>
              <th>STT</th>
              <th>Danh mục</th>
              <th>Tên tin tức</th>
              <th>Ảnh đại diện</th>
              <th>Trạng thái</th>
              <th><i class="fas fa-tools"></i></th>
            </tr>
          </thead>
          <tbody>
            @if(isset($News) && count($News) > 0)
            @foreach($News as $k => $v)
            <tr>
              <td>{{$k+1}}</td>
              <td>{{$v->CategoryName}}</td>
              <td>{{$v->Name}}</td>
              <td>
                <img src="{{url('images/news/'.$v->Images)}}" width="100" alt="Avatar" />
              </td>
              <td>
                @if($v->Status == 1)
                  Bật
                @else
                  Tắt
                @endif
              </td>
              <td> 
                <a href="{{url('admin/news/edit/'.$v->RowID)}}" title="Chỉnh sửa">
                  <i class="fas fa-edit"></i>
                </a>
                <a href="{{url('admin/news/delete/'.$v->RowID)}}" title="Xóa">
                  <i class="fas fa-trash-alt"></i>
                </a>
              </td>
            </tr>
            @endforeach
            @endif
          </tbody>
            
        </table>
        </div>
      </div>
      <!-- /.card -->
    </div>
@stop