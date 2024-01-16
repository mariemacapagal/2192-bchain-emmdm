import React from "react";

class TodoListComponent extends React.Component {
    render () {
        return (
            <div className="container">
                <h2>To-do List</h2>
                <div className="flex-direction">
                    <div>
                        <input type="checkbox" name="" id="" />
                        <label htmlFor="">Clean Porch</label>
                    </div>
                    <div>
                        <input type="checkbox" name="" id="" />
                        <label htmlFor="">Wash Car</label>
                    </div>
                    <div>
                        <input type="checkbox" name="" id="" />
                        <label htmlFor="">Attend BCHAIN Class</label>
                    </div>
                </div>
            </div>
        );
    }
}

export default TodoListComponent;