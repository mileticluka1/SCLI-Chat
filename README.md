# SCLI-Chat

This is a simple chat application written in Ruby using sockets. It allows two users to have a real-time conversation over a network connection using the command line interface (CLI). The chat is anonymous, meaning no identification or user registration is required and no messages are stored locally or on cloud (compatible with ngrok but mainly made for p2p connections).

## Prerequisites

- Ruby (version 2.4 or higher) installed on your machine.

## Usage

### listener.rb

1. Open a terminal window or command prompt.
2. Navigate to the directory where `listener.rb` is located.
3. Run the following command:

```
bash
ruby listener.rb <port>
```

Replace <port> with the desired port number (e.g., `2000`).

1. The listener will start and display the message "Listening for connections on port `<port>`...".
2. Wait for a caller to connect.

### caller.rb

1. Open another terminal window or command prompt.
2. Navigate to the directory where `caller.rb` is located.
3. Run the following command:

```
ruby caller.rb <listener_ip> <listener_port>
```
Replace <listener_ip> with the IP address where the listener is running (e.g., `localhost` for local testing) and <listener_port> with the same port number used in the listener setup.

4. The caller will connect to the listener, and you can start the chat.

## Chatting

- The listener waits for the caller to connect.
- Once connected, the caller can send messages by typing them in the caller's terminal and pressing Enter.
- The listener will receive the messages and display them in the listener's terminal.
- The listener can respond by typing messages in the listener's terminal and pressing Enter.
- The caller will receive the responses and display them in the caller's terminal.
- The conversation continues back and forth until either side terminates the chat by closing the terminal or interrupting the scripts.

## Notes

-     The chat is anonymous, and no personal information or user registration is required.
-     Messages are not stored anywhere and are only displayed during the runtime of the chat application.
-     Ensure that both sides (listener and caller) are running and connected for a successful chat session.
-     The scripts provided are basic examples and may not handle all possible scenarios or errors and project is still in developement.

Feel free to modify and enhance the code as per your requirements.

For any questions or assistance, please reach out to mileticluka@protonmail.com
