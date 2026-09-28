// Check whether a login status is success
let status = 'success';

if(status) {
    console.log("Login successful");
}

// Check whether a password has atleast 8 characters
let password = 'gmfgkg0565o';
let characters = password.length;

if(characters>=8){
    console.log("Password has atleast 8 char");
}else{
    console.log("Less than 8 char");
}

//Print every user from a loop
const users = ['Rahul', 'Priya', 'Amit', 'Neha'];

for(let i = 0; i<= users.length - 1; i++) {
    console.log(users[i])
}

//Find all users whose status is "Active"
const users1 = [
    { name: "Rahul", status: "Active" },
    { name: "Amit", status: "Inactive" },
    { name: "Neha", status: "Active" }
];

for(let i = 0;i< users1.length; i++) {
    if(users1[i].status === 'Active'){
        console.log(users1[i].name)
    }
}

//Find a product
const products = [
    { id: 101, name: "Laptop" },
    { id: 102, name: "Mouse" },
    { id: 103, name: "Keyboard" }
];

for(let i = 0;i< products.length; i++) {
    if(products[i].id === 102){
        console.log(products[i].name)
    }
}

//API-style validation
const response = {
    status: 200,
    token: 'abc123'
}

if(response.status === 200){
    console.log("PASS")
}else{
    console.log("FAIL")
}

//Create a simple try/catch example where an error is deliberately generated and caught.
try {
    let status = "Failed";

    if (status === "Failed") {
        throw new Error("Test case failed");
    }

    console.log("Test case passed");
}
catch (error) {
    console.log("Error:", error.message);
}

// Create a small Promise that returns:API response received after a simulated delay.
function getData() {
    return new Promise((resolve) => {
        setTimeout(() => {
            resolve("API response received");
        }, 1000);
    });
}

async function test() {
    let result = await getData();
    console.log(result);
}

test();

//Assertion-style validation
const expectedStatus = 200;
const actualStatus = 404;

if (expectedStatus === actualStatus) {
    console.log("PASS");
} else {
    console.log("FAIL");
}

//Real QA Scenario
const order = {
    orderId: 1001,
    status: "Completed",
    quantity: 2
};

//Validate if they exists
if(order.orderId){
    console.log('PASS-Oderid exists')
}else{
    console.log('FAIL-Oderid does not exist')
}

if(order.status === 'Completed'){
    console.log('PASS-Status completed')
}else{
    console.log('FAIL-Status is not completed')
}

if(order.quantity > 5){
    console.log('PASS-Quantity greater than 5')
}else{
    console.log('FAIL-Quantity less than 5')
}