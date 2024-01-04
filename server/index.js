//APi
const express = require('express')
const PORT = 3000;
//create APi
const app = express();
app.listen(PORT, "0.0.0.0", () => {
    console.log(`conntected at port ${PORT}`)
})
//localhost