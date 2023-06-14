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
            let row = document.createElement("div");
            let card = document.createElement("div");
            row.classList.add("row");
            row.classList.add("mx-0");

            card.classList.add("alert");
            card.classList.add("alert-primary");
            card.classList.add("col-6");
            card.id = message.id;
            card.innerHTML = message.message;

            row.appendChild(card);

            if (messageList) messageList.appendChild(row);
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

            var message = messageInput.value;

            // Populate message list with new message
            let row = document.createElement("div");
            var card = document.createElement("div");
            row.classList.add("row");
            row.classList.add("mx-0");
            card.classList.add("alert");
            card.classList.add("alert-primary");
            card.classList.add("col-6");
            card.classList.add("offset-6");
            card.innerHTML=message;

            row.appendChild(card);
            messageList.appendChild(row);
        
            // Clear the message input field
            messageInput.value = '';
            messageButton.disabled = true;

            scrollToBottom(messageList);
            // storeMessageToDB()
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


    /*
    -----------------------------------------------------------
    ON PAGE LOAD FUNCTION CALLS
    -----------------------------------------------------------
    */
    getAllMessages();
});
