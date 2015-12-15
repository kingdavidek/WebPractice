
/*jslint vars: true, plusplus: true, devel: true, nomen: true, indent: 4, maxerr: 50 */
/*global $, jQuery, alert*/

$(document).ready(function () {
    
    //Create the class which will create instances of 'task' objects. 
    function Task(name) {
        this.name = name;
        this.numInstances = (this.numInstances || 0) + 1;
        this.taskContainer = '<li><button name=userTask' + this.numInstances + name + '>' + this.name + '</button></li>';
        //FOR SOME REASON THE counter won't update with each new button created :/
    }
    
    $('button').on('click', function () {
        $(this).addClass('clickedButton');
        var theName = prompt('Please enter task name');
        //So here we actually create an instance AND add it visually to the web page. But now need to link button to instance.
        //var taskContainer = '<li><button name=userTask' + i + theName + '>' + aTask.name + '</button></li>';
        var aTask = new Task(theName);
        console.log(aTask);
        $(this).closest('ul').append(aTask.taskContainer);              //here I have tried to link the appropriate instance of the class to the html element.
        //Have to give a class to each individual task so that we can select it in JQuery.
        $('li button').last().addClass('task');
        $('li button').last().data(aTask);
        
        //We need to program what happens when the new button is clicked.
        $('.task').on('click', function () {
            //figure out why this alert happens for all the following list elements as well. 
            alert('menu for tasks to be programmed. This one is: ' + $(this).data("name"));
        });
    });
    
    
});