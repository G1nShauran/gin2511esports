@extends('back.template.master')

@section('title', 'Quản lí danh mục tin')

@section('heading', 'Danh sách danh mục tin')

@section('news', 'active')

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
              <th>Tên danh mục</th>
              <th>Trạng thái</th>
              <th><i class="fas fa-tools"></i></th>
            </tr>
          </thead>
          <tbody>
            @if(isset($NewsCategory) && count($NewsCategory) > 0)
            @foreach($NewsCategory as $k => $v)
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
              <td> 
                <a href="{{url('admin/news_cat/edit/'.$v->RowID)}}" title="Chỉnh sửa">
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