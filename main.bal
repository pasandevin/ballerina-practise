import ballerina/http;

listener http:Listener httpListener = new (8090);

service / on httpListener {
    resource function get greeting() returns string { 
        return "Hello, World!"; 
    }

    resource function get greeting/[string name]() returns string { 
        return "Hello " + name; 
    }
}