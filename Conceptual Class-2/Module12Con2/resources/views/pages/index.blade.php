@extends('layouts.app')

@section('title', 'All Posts')

@section('content')

<!-- Blog Post List -->

        <!-- @session('success')
            <div class="bg-green-500 text-white p-4">
                {{ session('success') }}
            </div>
        @endsession -->

        <div class="flex justify-between">
            <h3 class="text-xl font-semibold mb-4">Recent Blog Posts</h3>

            <div>
            <a class="px-3 py-2 rounded text-gray-100 bg-indigo-500 hover:scale-105 transition" href="{{ route('posts.trashed') }}">Trashed</a>
            <a class="px-3 py-2 rounded text-gray-100 bg-indigo-500 hover:scale-105 transition" href="{{ route('posts.withTrashed') }}">All Posts With Trashed</a>
            </div>
        </div>


<div>
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                <tr>
                    <th scope="col" class="px-6 py-3">
                        Serial
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Post Title
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Category
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Tags
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Published Date
                    </th>
                    <th scope="col" class="px-6 py-3">
                        Actions
                    </th>
                </tr>
            </thead>
            <tbody>
                @foreach ($posts as $post)
                <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                    
                    <td class="px-6 py-4">
                        {{ $loop->iteration }}
                    </td>
                    
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                        {{ $post->title }}
                    </th>
                    <td class="px-6 py-4">
                        {{ ucwords($post->category) }}
                    </td>
                    <td class="px-6 py-4">
                        {{-- {{ ucwords(implode(', ' ,$post->tags)) }} --}}
                        {{ $post->tags ? ucwords(implode(', ' ,$post->tags)) : '' }}
                    </td>
                    <td class="px-6 py-4">
                        {{ $post->created_at->diffForHumans() }}
                    </td>
                    <td class="px-6 py-4">
                        <div class="flex items-center space-x-4">
                            <a
                            href="{{ route('posts.show', $post->id) }}"
                            class="px-3 py-2 rounded text-gray-100 bg-indigo-500 hover:scale-105 transition focus:outline-none focus:ring focus:border-blue-300 ">
                            View
                        </a>
                            <a
                                href="{{ route('posts.edit', $post->id) }}"
                                class="px-3 py-2 rounded text-gray-100 bg-green-400 hover:scale-105 transition focus:outline-none focus:ring focus:border-blue-300">
                                Edit
                            </a>
                            <form id="deletePost" action="{{ route('posts.destroy', $post->id) }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button
                                class="px-3 py-2 rounded text-gray-100 bg-red-400 hover:scale-105 transition  focus:outline-none focus:ring focus:border-red-500 confirm-delete">
                                Delete
                            </button>
                            </form>
                        </div>
                    </td>
                </tr>
                @endforeach
                
              
            </tbody>
        </table>

        <!-- <div class="mt-5">

            {{ $posts->links() }}

            <div class="mt-2">
                <p class="float-right">Page {{ $posts->currentPage() }} of {{ $posts->lastPage() }}</p>
            </div>

        </div> -->

         <!-- <div class="mt-5">

            {{ $posts->links() }}


        </div> -->
        

        <div class="mt-5 d-flex justify-content-center align-items-center">
            <!-- Previous Page Link -->
            @if ($posts->onFirstPage())
                <span class="btn btn-secondary disabled">&laquo; Previous</span>
            @else
                <a class="btn btn-primary" href="{{ $posts->previousPageUrl() }}">&laquo; Previous</a>
            @endif

            <!-- Display Current Page Number in the Middle -->
            <span class="mx-0" style="margin-left: 40%;">
                Page {{ $posts->currentPage() }} of {{ $posts->lastPage() }}
            </span>

            <!-- Next Page Link -->
            @if ($posts->hasMorePages())
                <a class="btn btn-primary float-right" href="{{ $posts->nextPageUrl() }}">Next &raquo;</a>
            @else
                <span class="btn btn-secondary disabled float-right">Next &raquo;</span>
            @endif
        </div>

    



    </div>
</div>
@endsection


