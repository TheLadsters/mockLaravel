@extends('layouts.welcome')

@section('main-chat')
<div class="d-flex" id="wrapper">
    <!-- Page content wrapper-->
    <!-- <x-sidebar />    -->
    <div id="page-content-wrapper">
        <!-- Top navigation-->
        <x-navbar />
        <!-- Page content-->
        <div class="container-fluid">
            <div class="fixed-bottom mx-5 mb-3">
                <form>  
                    <div class="messages--div container" id="message-list">
                        <div class="row mx-0">
                            <div class="col-6 alert alert-primary offset-6">
                            This is a reply
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <input id="message-input" type="text" class="form-control" placeholder="Type a new message">
                    </div>

                    <div class="row">
                        <div class="col-12 d-flex flex-row justify-content-end">
                            <a class="nav-link">
                                <i class='bx bx-smile bx-sm'></i>
                            </a>
                                    
                            <a class="nav-link">
                                <i class='bx bx-paperclip bx-sm'></i>
                            </a>

                            <button id="message-button" type="submit" class="btn-submit">
                                Send
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection