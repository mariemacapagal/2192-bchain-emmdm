import React from "react";
import ChildComponent from "./ChildComponent";

class ParentComponent extends React.Component {
    render() {
        const dataToPass = "Hello from Parent!";
        return (
            <ChildComponent message={dataToPass}/>
        );
    }
}

/*
function ParentComponent(){
    const dataToPass = "Hello from Parent!";
    return (
        <ChildComponent message={dataToPass}/>
    );
}
*/


export default ParentComponent;