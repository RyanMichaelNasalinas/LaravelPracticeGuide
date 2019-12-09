@extends('layouts.app')

@section('content')
    <div class="container">
        {{-- <a href="{{ url('/contact') }}">Go Somewhere</a> --}}
        <a href="{{ route('contact.view') }}">Go Somewhere</a>
    </div>
@endsection
