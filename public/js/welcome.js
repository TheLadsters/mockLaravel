/*!
* Start Bootstrap - Simple Sidebar v6.0.6 (https://startbootstrap.com/template/simple-sidebar)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-simple-sidebar/blob/master/LICENSE)
*/
// 
// Scripts
// 

window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
            document.body.classList.toggle('sb-sidenav-toggled');
        }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

    const messageInput = document.getElementById('message-input');
    const messageButton = document.getElementById('message-button');
    messageButton.disabled = true;

    messageInput.addEventListener('input', function(e) {
        if(messageInput.value === ''){
            messageButton.disabled = true
        }
        else {
            messageButton.disabled = false
        }
    });


    messageButton.addEventListener('click', function(e) {
        e.preventDefault();
    
        // Get the value from the message input field
        var message = messageInput.value;
    
    
        // Clear the message input field
        messageInput.value = '';
        messageButton.disabled = true;
      });
});
