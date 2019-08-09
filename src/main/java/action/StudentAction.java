package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entity.Student;
import model.StudentModel;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class StudentAction extends ActionSupport {
    private Student student = new Student();
    private List<Student> list = new ArrayList<>();
    private StudentModel model = new StudentModel();
    private String message ="";
    private String errormesage="";

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getErrormesage() {
        return errormesage;
    }

    public void setErrormesage(String errormesage) {
        this.errormesage = errormesage;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public List<Student> getList() {
        return list;
    }

    public void setList(List<Student> list) {
        this.list = list;
    }

    public StudentModel getModel() {
        return model;
    }

    public void setModel(StudentModel model) {
        this.model = model;
    }


    public String createStudent(){
        this.student = new Student();
        return INPUT;
    }

    public String saveOrUpdate(){
      model.saveStudent(student);
      return SUCCESS;
    }
    public String list(){
        list = model.listStudent();
        return SUCCESS;
    }
    public String delete(){
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        Long id= Long.parseLong(request.getParameter("id"));
        model.deleteStudent(id);
        return SUCCESS;
    }
    public String edit(){             // lấy thông tin ra trang edit.jsp
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        Long id= Long.parseLong(request.getParameter("id"));
        if(model.findById(id)!=null){
            Student updateStudent = model.findById(id);
            student.setId(updateStudent.getId());
            student.setName(updateStudent.getName());
            student.setRollnumber(updateStudent.getRollnumber());
            student.setEmail(updateStudent.getEmail());
            return SUCCESS;
        }
        return INPUT;
    }
    public String update(){           // update thông tin mới và submit...
        student.setName(student.getName());
        student.setRollnumber(student.getRollnumber());
        student.setEmail(student.getEmail());
        student.setUpdatedAt(Calendar.getInstance().getTimeInMillis());
        boolean status = model.saveStudent(student);
        if(status){
            setMessage("update success!!!");
            return SUCCESS;
        }else {
            setErrormesage("update error!!!");
            return INPUT;
        }
    }
}
