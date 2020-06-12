import { Socket } from "phoenix";

let socket = new Socket("/socket", {params: {token: window.userToken}});

socket.connect();

let channel = socket.channel("room:lobby", {});
let chatInput = document.querySelector("#chat-input");
let messageContainer = document.querySelector("#messages");

chatInput.addEventListener("keypress", keypressHandler);

channel.on("new_msg", newMsgHandler);
channel.join()
  .receive("ok", () => { console.log("Joined successfully!"); })
  .receive("error", () => { console.log("Unable to join"); });

function keypressHandler(e) {
  if (e.keyCode === 13) {
    channel.push("new_msg", { message: chatInput.value, username });
    chatInput.value = "";
  }
}

function newMsgHandler(payload) {
  let messageItem = document.createElement("li");
  messageItem.innerText = `[${payload.username}] ${payload.message}`;
  messageContainer.appendChild(messageItem);
}

export default socket
