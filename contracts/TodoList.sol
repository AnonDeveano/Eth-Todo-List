pragma solidity ^0.5.0;

contract TodoList {
    // taskCount belongs to entire contract,
    // public adds functionality which makes it viewable
    uint256 public taskCount = 0;

    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    mapping(uint256 => Task) public tasks;

    event TaskCreated(uint256 id, string content, bool completed);

    event TaskCompleted(uint256 id, bool completed);

    constructor() public {
        createTask("Check out dappuniversity.com");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }

    function toggleCompleted(uint256 id) public {
        // underscre means local variable, not state variable
        Task memory _task = tasks[id];
        _task.completed = !_task.completed;
        tasks[id] = _task;
        emit TaskCompleted(id, _task.completed);
    }
}
