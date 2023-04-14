<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>CRUD LARAVEL 8</title>
  </head>
    <style>
      body {
        background-color:#ffebbb;
      }
    </style>
  <body>
    <h1 class="text-center mb-4">Data Barang</h1>
    
    <div class="container">
      <a href="/tambahbarang" class="btn btn-success">Tambah +</a>
        <div class="row g-3 align-items-center mt-2">
            <div class="col-auto">
              <form action="/barang" method="GET">
                <input type="search" id="inputPassword6" name="search" class="form-control" aria-describedby="passwordHelpInline">
                <button type="submit" class="btn btn-primary ml-3 mt-3">Search</button>
              </form>
            </div>
        </div>

        <div class="row">
        @if($message = Session::get('success'))
            <div class="alert alert-success" role="alert">
                {{ $message }}
            </div>
        @endif
        <table class="table table-warning table-striped table-hover">
    <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">kode_barang</th>
      <th scope="col">nama_barang</th>
      <th scope="col">kategori_barang</th>
      <th scope="col">harga</th>
      <th scope="col">qty</th>
      <th scope="col" style="text-center">action</th>
      <th scope="col">created_at</th>
    </tr>
  </thead>
  <tbody>
    @php
      $no = 1;
    @endphp
    @foreach ($data as $index => $row)
    <tr>
      <th scope="row">{{ $index + $data->firstItem() }}</th>
      <td>{{ $row->kode_barang }}</td>
      <td>{{ $row->nama_barang }}</td>
      <td>{{ $row->kategori_barang }}</td>
      <td>{{ $row->harga }}</td>
      <td>{{ $row->qty }}</td>
      <td>
            <a href="/show/{{ $row->id }}" class="btn btn-info">Details</a>
            <a href="/tampilkandata/{{ $row->id }}" class="btn btn-warning">Edit</a>
            <a href="/delete/{{ $row->id }}" class="btn btn-danger">Delete</button>
      </td>
      <td>{{ $row->created_at->diffForHumans() }}</td>
    </tr>
    @endforeach
  </tbody>
</table>
  {{ $data->links() }}
        </div>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>