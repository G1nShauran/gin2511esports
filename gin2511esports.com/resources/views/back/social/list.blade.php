@extends('back.template.master')

@section('title', 'Quản lí mạng xã hội')

@section('heading', 'Danh sách mạng xã hội')

@section('social', 'active')

@section('content')
    
    <div class="col-md-12">
      <!-- general form elements -->
      <div class="card">
        
        <!-- /.card-header -->
        <div class="card-body">
        <table id="example2" class="table table-bordered table-hover">
          <thead>
            <tr>
              <th>STT</th>
              <th>Tên mạng xã hội</th>
              <th>Trạng thái</th>
              <th>Sắp xếp</th>
              <th><i class="fas fa-tools"></i></th>
            </tr>
          </thead>
          <tbody>
            @if(isset($Social) && count($Social) > 0)
            @foreach($Social as $k => $v)
            <tr>
              <td>{{$k+1}}</td>
              <td>{{$v->Name}}</td>
              <td>
                @if($v->Status == 1)
                  Bật
                @else
                  Tắt
                @endif
              </td>
              <td>{{$v->Sort}}</td>
              <td> 
                <a href="{{url('admin/social/edit/'.$v->RowID)}}" title="Chỉnh sửa">
                  <i class="fas fa-edit"></i>
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