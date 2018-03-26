package hello;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GreetingController {


    @MessageMapping("/hello")
    @SendTo("/topic/greetings")
    public Greeting greeting(HelloMessage message) throws Exception {
       // Thread.sleep(1000); // simulated delay
        return new Greeting(message.getName());
    }

    @RequestMapping(value="cmt")
    public String cmt() {
    	
    	return "test.jsp";  	
    }
}