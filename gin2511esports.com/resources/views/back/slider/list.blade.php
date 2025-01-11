@extends('back.template.master')

@section('title', 'Quản lí slide')

@section('heading', 'Danh sách slide')

@section('slider', 'active')

@section('content')
    
    <div class="col-md-12">
      <!-- general form elements -->
      <div class="card">
        <div class="card-header">
          <a  class="btn btn-block btn-primary" href="{{url('admin/slider/add')}}" title="Thêm">
            Thêm
          </a>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
        <table id="example2" class="table table-bordered table-hover">
          <thead>
            <tr>
              <th>STT</th>
              <th>Tên tin tức</th>
              <th>Ảnh đại diện</th>
              <th>Trạng thái</th>
              <td>Sắp xếp</td>
              <th><i class="fas fa-tools"></i></th>
            </tr>
          </thead>
          <tbody>
            @if(isset($Slider) && count($Slider) > 0)
            @foreach($Slider as $k => $v)
            <tr>
              <td>{{$k+1}}</td>
              <td>{{$v->Name}}</td>
              <td>
                <img src="{{url('images/slider/'.$v->Images)}}" width="100" alt="Avatar" />
              </td>
              <td>
                @if($v->Status == 1)
                  Bật
                @else
                  Tắt
                @endif
              </td>
              <td>{{$v->Sort}}</td>
              <td> 
                <a href="{{url('admin/slider/edit/'.$v->RowID)}}" title="Chỉnh sửa">
                  <i class="fas fa-edit"></i>
                </a>
                <a href="{{url('admin/slider/delete/'.$v->RowID)}}" title="Xóa">
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