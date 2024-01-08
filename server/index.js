const express = require("express");
const mongoose = require("mongoose");
const DB = "mongodb+srv://nholkey:thanhtruc@cluster0.zvj91qn.mongodb.net/?retryWrites=true&w=majority"
// const adminRouter = require("./routes/admin");
// IMPORTS FROM OTHER FILES
const authRouter = require("./routes/auth");
//init
const PORT = 3000;
const app = express();
//middleware
app.use(express.json())
app.use(authRouter);
//create APi
// CRUD
//connection
mongoose.connect(DB).then(() => {
    console.log('connection succes');
})
    .catch((e) => {
        console.log(e);
    });
app.listen(PORT, "0.0.0.0", () => {
    console.log(`conntected at port ${PORT}`)
})
//localhost