@extends('back.template.master')

@section('title', 'Quản lí nhân viên')

@section('heading', 'Danh sách nhân viên')

@section('content')
    
    <div class="col-md-12">
      <!-- general form elements -->
      <div class="card">
        <div class="card-header">
          <a  class="btn btn-block btn-primary" href="{{url('admin/staff/add')}}" title="Thêm">
            Thêm
          </a>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
        <table id="example2" class="table table-bordered table-hover">
          <thead>
            <tr>
              <th>STT</th>
              <th>Họ và tên</th>
              <th>Cấp bậc</th>
              <th>Email</th>
              <th>Số điện thoại</th>
              <th><i class="fas fa-tools"></i></th>
            </tr>
          </thead>
          <tbody>
            @if(isset($User) && count($User) > 0)
            @foreach($User as $k => $v)
            <tr>
              <td>{{$k+1}}</td>
              <td>{{$v->fullname}}</td>
              <td>{{$v->name}}</td>
              <td>{{$v->email}}</td>
              <td>{{$v->phone}}</td>
              <td> 
                <a href="{{url('admin/staff/edit/'.$v->id)}}" title="Chỉnh sửa">
                  <i class="fas fa-edit"></i>
                </a>
                <a href="{{url('admin/staff/delete/'.$v->id)}}" title="Xóa">
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