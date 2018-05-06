package controller;

import model.Mood;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.MoodService;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class MoodManageController {
    @Autowired
    private MoodService service;


    @RequestMapping("mood")
    public String toMoodManage(Model model){
        List<Mood> moodList=service.getMoodListByNothing();
        model.addAttribute("moodList",moodList);
        return "admin/moodManage";
    }

    @RequestMapping("deleteMood")
    public String deleteMood(@RequestParam int id){
        service.deleteMood(id);
        return "admin/moodManage";
    }

    @RequestMapping("toAddPage")
    public String toAddPage(){
        return "admin/addMood";
    }

    @RequestMapping("addMood")
    public String addMood(@RequestParam String userName,@RequestParam String content){
        Mood mood=new Mood();
        mood.setUserName(userName);
        mood.setMoodContent(content);
        service.addMood(mood);
        return "admin/moodManage";
    }

}
