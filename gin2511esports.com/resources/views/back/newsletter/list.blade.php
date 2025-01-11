@extends('back.template.master')

@section('title', 'Quản lí nhận tin')

@section('heading', 'Danh sách nhận tin')

@section('newsletter', 'active')

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
              <th>Tên email</th>
              <th>Trạng thái</th>
              <th><i class="fas fa-tools"></i></th>
            </tr>
          </thead>
          <tbody>
            @if(isset($Newsletter) && count($Newsletter) > 0)
            @foreach($Newsletter as $k => $v)
            <tr>
              <td>{{$k+1}}</td>
              <td>{{$v->Email}}</td>
              <td>
                @if($v->IsViews == 1)
                  Đã xem
                @else
                  <span class="color_red">Chưa xem</span>
                @endif
              </td>
              <td> 
                <a href="{{url('admin/newsletter/edit/'.$v->RowID)}}" title="Chỉnh sửa">
                  <i class="fas fa-edit"></i>
                </a>

                <a href="{{url('admin/newsletter/delete/'.$v->RowID)}}" title="Xóa">
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