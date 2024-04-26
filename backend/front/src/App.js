import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import NavigationBar from "./components/NavigationBarClass";
import Home from "./components/Home";
import Login from "./components/Login";

function App() {
    return (
        <div className="App">
            <BrowserRouter>
                <NavigationBar/>
                <div className="container-fluid">
                    <Routes>
                        <Route path="home" element={<Home />}/>
                        <Route path="login" element={<Login/>}/>
                    </Routes>
                </div>
            </BrowserRouter>
        </div>
    );
}
export default App;