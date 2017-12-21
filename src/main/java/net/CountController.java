package net;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@EnableAutoConfiguration
public class CountController {

//    private Similarity similarity;

    @RequestMapping(value="/index",method={RequestMethod.GET,RequestMethod.POST})
    public String contSimilarity(int type,String word1,String word2){
        return "index";
    }
}
