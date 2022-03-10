/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package studentQuizapp;

/**
 *
 * @author connd
 */
public class studentQuiz {

    protected String Question, Answer, Marks, UserAnswer;

    public studentQuiz() {
        Question = " ";
        Answer = " ";
        Marks = " ";
        UserAnswer = "";

    }

    public studentQuiz(String Question, String Answer, String Marks, String UserAnswer) {
        this.Question = Question;
        this.Answer = Answer;
        this.Marks = Marks;
        this.UserAnswer = UserAnswer;

    }

    public String getQuestion() {
        return Question;
    }

    public void setQuestion(String Question) {
        this.Question = Question;

    }

    public String getAnswer() {
        return Answer;
    }

    public void setAnswer(String Answer) {
        this.Answer = Answer;
    }

    public String UserAnswer() {
        return UserAnswer;
    }

    public void setUserAnswer(String UserAnswer) {
        this.UserAnswer = UserAnswer;
    }

    public String getMarks() {
        return Marks;
    }

    public void setMarks(String Marks) {
        this.Marks = Marks;
    }
}
