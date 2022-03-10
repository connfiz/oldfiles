package studentQuizapp;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author connd
 */
public class studentQuizApp {

    public static void main(String[] args) {

        basicQuestion b = (basicQuestion) new studentQuiz();
        b.setQuestion("what is 1000 yars also know as");
        b.setUserAnswer("long time");
        b.setAnswer("millennia ");
        b.setMarks("60");
        System.out.println("queston:" + b.getQuestion() + "user answer" + b.getUserAnswer() + "correct answer " + b.getAnswer() + "marks" + b.getMarks());

        //make and print an instance of Managerw
        essayQuestion e = (essayQuestion) new studentQuiz();
        e.setQuestion("write an essay about your summer");
        e.setUserAnswer("my summer was very good ....");
        e.setMaxWordCount("1000 words ");
        e.setMarks("100");
        System.out.println("queston:" + e.getQuestion() + "user answer:" + e.getUserAnswer() + "max word count is :" + e.MaxWordCount() + "marks:" + e.getMarks());

        mcqQuestion m = (mcqQuestion) new studentQuiz();
        m.setQuestion("whats the worst day of the week ");
        m.setUserAnswer("friday");
        m.setAnswerA("moneyday");
        m.setAnswerb("wensday");
        m.setAnswerc("monday");
        m.setAnswer("monday");
        m.setMarks("50");
        System.out.println("queston:" + m.getQuestion() + "a :" + m.getAnswerA + "b;" + m.getAnswerb() + "c :" + m.getAnswerc() + "user answer:" + m.getUserAnswer() + "marks:" + m.getMarks());

        //make and print an instance of FloorStaff
    }

}
