@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    {{-- <form action="{{ route('jobs.store') }}" method="POST">
                        @csrf

                        <input type="text" name="title" class="form-control" id="">
                        <button type="submit" class="btn btn-success mt-3">Submit</button>
                    </form> --}}
                   {{-- @forelse($users as $user)
                        {{ $user }}<br>
                    @empty
                        <h1>No user found!</h1>    
                   @endforelse --}}
         
                   {{-- @for($i = 0; $i <= 10; $i++)
                        {{ $i }}<br>
                   @endfor --}}

                   {{-- @foreach($users as $user)
                        <p>{{ $user->name }}{{$user->profile['address'] }}</p>
                   @endforeach --}}
                   {{-- <p>{{ Auth::user()->name }}</p>
                    <p>{{ Auth::user()->profile->address }}</p> --}}

                   {{-- @foreach($users as $user)
                       

                        <p>{{ $user->name }}</p>
                            @foreach($user->posts as $post)
                                <p>
                                    <b>{{ $post->title }}</b>
                                </p>
                                <p>
                                    <b>{{ $post->body }}</b>
                                </p>
                            @endforeach
                        <hr>
                    @endforeach --}}

                    {{-- @foreach($posts as $post)
                            <p>{{ $post->title }} [Posted By:]<b>{{ $post->users->name }}</b></p> 
                    @endforeach --}}

                    @foreach($posts as $post)
                        <p>{{ $post->title }}</p>
                        @foreach($post->tag as $tag)
                            {{ $tag->name }}<br>
                        @endforeach
                    @endforeach

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
