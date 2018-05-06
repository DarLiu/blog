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
public class MoodController {

    @Autowired
    private MoodService service;

    @RequestMapping("mood")
    public String mood(Model model, @RequestParam String userName){
        List<Mood> moodList=service.getMoodList(userName);
        model.addAttribute("moodList",moodList);
        return "page/moodList";
    }

}
