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
  
  <body>
  <style>
    body{
      background-color: #ffebbb;
    }
   
    </style>
    <h1 class="text-center mb-4">Data Barang</h1>
    
    <div class="container mt-5">
        <div class="row justify-content-center align-items-center">
          <div class="card" style="width: 24rem;">
          <div class="card-header text-center">
           <b> Detail Barang </b>
          </div>
          <div class="card-body">
            <ul class="list-group list-group-flush">
              <li class="list-group-item"><b>Id : </b>{{$data->id}}</li>
              <li class="list-group-item"><b>Kode Barang : </b>{{$data->kode_barang}}</li>
              <li class="list-group-item"><b>Kategori : </b>{{$data->kategori_barang}}</li>
              <li class="list-group-item"><b>Nama Barang : </b>{{$data->nama_barang}}</li>
              <li class="list-group-item"><b>Harga : </b>{{$data->harga}}</li>
              <li class="list-group-item"><b>Qty : </b>{{$data->qty}}</li>
            </ul>
          </div>
          <a class="btn btn-success mt3" href="{{ route('barang') }}">Kembali</a>
        </div>

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