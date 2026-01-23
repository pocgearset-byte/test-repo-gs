public class TaskHandler {
    
    
//comments outside of the class teste
    public static void createTask(String subject, Id whatId) {
        Task task = new Task(Subject = subject, WhatId = whatId, Status = 'Not Started', Priority = 'Normal');
        insert task;
    }
}