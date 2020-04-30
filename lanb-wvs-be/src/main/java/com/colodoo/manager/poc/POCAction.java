package com.colodoo.manager.poc;

import com.colodoo.framework.common.Msg;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = {"/poc"})
public class POCAction {

    @RequestMapping(value = "/demoPoc")
    @ResponseBody
    public Msg demoPoc(String value) {
        Msg msg = new Msg(true, "", value);
        return msg;
    }

}
