<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Laravel Chat Mockup</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="css/welcome.css" rel="stylesheet" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
         integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body>
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
                            <div id="message-list" class="messages--div">
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

                                    <button id="message-button" type="submit" class="btn btn-primary">
                                        <i class='bx bx-send'></i> Send
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="js/welcome.js"></script>
    </body>
</html>
