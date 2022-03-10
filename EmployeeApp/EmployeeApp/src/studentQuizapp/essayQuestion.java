/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package studentQuizapp;

/**
 *
 * @author connd
 */
public class essayQuestion extends basicQuestion {
    private String Question;
    private String Answer;
    private String Marks;
    private String UserAnswer;
    private String MaxWordCount;

    public essayQuestion() {
        super();
        Question = "";
        Answer = "";
        Marks = "";
        UserAnswer = "";
        MaxWordCount="";
    }

    public essayQuestion(String Question, String Answer, String Marks, String UserAnswer, String MaxWordCount) {
        super();
        this.Question = Question;
        this.Answer = Answer;
        this.Marks = Marks;
        this.UserAnswer = UserAnswer;
        this.MaxWordCount = MaxWordCount;
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
    public String MaxWordCount() {
        return MaxWordCount;
    }

    public void MaxWordCount(String MaxWordCount) {
        this.MaxWordCount = MaxWordCount;
    }
}

