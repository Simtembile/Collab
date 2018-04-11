package hello;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InputProcessingController {


    @MessageMapping("/hello")
    @SendTo("/topic/greetings")
    public Input greeting(Input input) throws Exception {
      //just pass the received input as is
        return new Input( input.getCharacter(), input.getPosition() );
    }

   
}
