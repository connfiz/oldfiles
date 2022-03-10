/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package studentQuizapp;

/**
 *
 * @author connd
 */
public class mcqQuestion extends basicQuestion {

    private String Question;
    private String AnswerA;
    private String Answerb;
    private String Answerc;
    private String Marks;
    private String UserAnswer;
    String getAnswerA;

    public mcqQuestion() {
        super();
        Question = " ";
        AnswerA = "";
        Answerb = "";
        Answerc = "";
        Marks = "";
        UserAnswer = "";
    }

    public mcqQuestion(String Question, String AnswerA, String Answerb, String Answerc, String Marks, String UserAnswer) {
        super();
        this.Question = Question;
        this.AnswerA = AnswerA;
        this.Answerb = Answerb;
        this.Answerc = Answerc;
        this.Marks = Marks;
        this.UserAnswer = UserAnswer;
    }

    public String getQuestion() {
        return Question;
    }

    public void setQuestion(String Question) {
        this.Question = Question;
    }

    public String getAnswerA() {
        return AnswerA;
    }

    public void setAnswerA(String AnswerA) {
        this.AnswerA = AnswerA;
    }

    public String getAnswerb() {
        return Answerb;
    }

    public void setAnswerb(String Answerb) {
        this.Answerb = Answerb;
    }

    public String getAnswerc() {
        return Answerc;
    }

    public void setAnswerc(String Answerc) {
        this.Answerc = Answerc;
    }

    public String getMarks() {
        return Marks;
    }

    public void setMarks(String Marcks) {
        this.Marks = Marks;
    }

    public String UserAnswer() {
        return UserAnswer;
    }

    public void setUserAnswer(String UserAnswer) {
        this.UserAnswer = UserAnswer;
    }
}
