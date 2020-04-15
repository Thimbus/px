// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from "../css/app.css"

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html"

window.id = Math.floor(Math.random() * 1000);

import socket from "./socket"

/*
const name = "quantomistro";
const endpoint = "/api/";
fetch(endpoint + name)
    .then(res => {
        return res.json();
    })
    .then(body => {
        alert("Response body:\n" + body);
    });
*/
