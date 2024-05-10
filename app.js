var express = require('express');
var mysql = require('mysql');

var app = express();

// Middleware for parsing JSON bodies
app.use(express.json());

// Create MySQL connection pool
const con = mysql.createConnection({
    host: 'localhost', // Update host to MySQL80
    user: 'root', // Update user if necessary
    password: 'Chinu.2003', // Update password if necessary
    database: 'AssistantManagement'
});


// Define routes
con.connect((err)=>{
    if(err)
        {
            console.log(err)
        }
        else{
            console.log("Connected")
        }
})

//Create a new assistant
app.post('/post', (req, res) => {
        const name=req.body.name;
        const id=req.body.id;
        const mobile=req.body.mobile;
        const email=req.body.email;
        const salary=req.body.salary;
        const city=req.body.city;
        const country=req.body.country;
        const department=req.body.department;
        const role=req.body.role;

        con.query('INSERT INTO Assistants values(?,?,?,?,?,?,?,?,?)',[id, name, mobile, email, salary, city, country, department, role],(err,result)=>{
            if (err) {
                console.log(err)
             } else {
                 res.json("Posted sucessfully");
             }
        })
        
    });

// Get all assistants
app.get("/fetch", (req, res) => {
    con.query("SELECT * FROM assistants;", function(err,result,fields){
        if (err) {
           console.log(err)
        } else {
            res.json(result);
        }
    });
});

// Get assistant by ID
app.get("/fetchbyid/:id", (req, res) => {
    const fetchId = req.params.id;
    con.query('SELECT * FROM assistants WHERE id = ?', fetchId, (err, result) => {
        if (err) {
            console.log(err)
         } 
        else {
            res.json(result);
        }
    });
});

// Update an existing assistant
app.put('/update/:id', (req, res) => {
    const upId = req.params.id;
    const name=req.body.name;
    const mobile=req.body.mobile;
    const email=req.body.email;
    const salary=req.body.salary;
    const city=req.body.city;
    const country=req.body.country;
    const department=req.body.department;
    const role=req.body.role;
    con.query('UPDATE assistants SET name = ?, mobile = ?, email = ?, salary = ?, city = ?, country = ?, department = ?, role = ? WHERE id = ?',
        [name, mobile, email, salary, city, country, department, role, upId],
        (err, result) => {
            if (err) {
                console.log(err)
             } 
            else {
                res.json("Updated sucessfully");
            }
        });
});

// Delete an existing assistant
app.delete('/deletedata/:id', (req, res) => {
    const delId = req.params.id;
    con.query('DELETE FROM assistants WHERE id = ?', delId, (err, result) => {
        if (err) {
            console.log(err)
         } 
        else {
            res.json("Deleted sucessfully")
            console.log(result);
        }
    });
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(3000, (err) => {
    console.log(`Server running on port ${3000}`);
});
