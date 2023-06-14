window.addEventListener("DOMContentLoaded", (event) => {
    const messageInput = document.getElementById("message-input");
    const messageButton = document.getElementById("message-button");
    const messageList = document.getElementById("message-list");
    messageButton.disabled = true;
    const sidebarToggle = document.body.querySelector("#sidebarToggle");

    /*
    -----------------------------------------------------------
    ASYNC DB CRUD FUNCTIONS
    -----------------------------------------------------------
    */
    const getAllMessages = async () => {
        try {
            const response = await $.ajax({
                url: "api/messages", // Replace with the appropriate route to your Laravel controller method
                type: "GET",
                dataType: "json",
            });
            setMessageList(response);
        } catch (error) {
            console.log(error.responseText); // Handle any errors here
        }
    };

    const storeMessageToDB = async (newMessage) => {
        try {
            const response = await $.ajax({
                url: "api/messages", // Replace with the appropriate route to your Laravel controller method
                type: "POST",
                dataType: "json",
                data: {
                    conversation_id: val,
                },
            });
        } catch (error) {
            console.log(error.responseText); // Handle any errors here
        }
    };

    /*
    -----------------------------------------------------------
    SUPPLEMENTARY CRUD FUNCTIONS
    -----------------------------------------------------------
    */
    const setMessageList = (allMessages) => {
        allMessages.forEach((message) => {
            let card = document.createElement("div");
            card.classList.add("alert");
            card.classList.add("alert-primary");
            card.id = message.id;
            card.innerHTML = message.message;

            if (messageList) messageList.appendChild(card);
        });
    };

    /*
    -----------------------------------------------------------
    EVENT LISTENERS
    -----------------------------------------------------------
    */
    if (messageInput)
        messageInput.addEventListener("input", function (e) {
            if (messageInput.value === "") messageButton.disabled = true;
            else messageButton.disabled = false;
        });

    if (messageButton)
        messageButton.addEventListener("click", function (e) {
            e.preventDefault();
            // Get the value from the message input field
            let message = messageInput.value;

            // Populate message list with new message
            let card = document.createElement("div");
            card.classList.add("alert");
            card.classList.add("alert-primary");
            card.innerHTML = message;

            messageList.appendChild(card);
            scrollToBottom(messageList);
            //storeMessageToDB()

            // Clear the message input field
            messageInput.value = "";
            messageButton.disabled = true;
        });

    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        if (localStorage.getItem("sb|sidebar-toggle") === "true")
            document.body.classList.toggle("sb-sidenav-toggled");

        sidebarToggle.addEventListener("click", (e) => {
            e.preventDefault();
            document.body.classList.toggle("sb-sidenav-toggled");
            localStorage.setItem(
                "sb|sidebar-toggle",
                document.body.classList.contains("sb-sidenav-toggled")
            );
        });
    }

    /*
    -----------------------------------------------------------
    MISCELLANEOUS FUNCTIONS
    -----------------------------------------------------------
    */
    // Function to scroll to the bottom of the container
    const scrollToBottom = (container) => {
        container.scrollTop = container.scrollHeight;
    };

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

        // Populate message list with new message
        var card = document.createElement("div");
        let col = document.createElement('div');
        card.classList.add("row");
        card.classList.add("mx-0");
        col.classList.add("alert");
        col.classList.add("alert-primary");
        col.classList.add("col-6");
        col.innerHTML=message;

        card.appendChild(col);
        messageList.appendChild(card);
    
        // Clear the message input field
        messageInput.value = '';
        messageButton.disabled = true;
      });
    /*
    -----------------------------------------------------------
    ON PAGE LOAD FUNCTION CALLS
    -----------------------------------------------------------
    */
    getAllMessages();
});
