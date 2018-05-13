package hello;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InputProcessingController {


    @MessageMapping("/process")
    @SendTo("/topic/input-processor")
    public Input processor(Input input) throws Exception {
      //just pass the received input as is
        return new Input( input.getCharacter(), input.getPosition() );
    }
    
    @MessageMapping("/datastream")
    @SendTo("/topic/input-processor")
    public String datastream(Data data) throws Exception {
         return data.getData();
    }

   
}
