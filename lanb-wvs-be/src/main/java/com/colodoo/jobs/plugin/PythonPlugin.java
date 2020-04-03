package com.colodoo.jobs.plugin;

import org.python.util.PythonInterpreter;

import java.util.HashMap;
import java.util.Map;

public class PythonPlugin {

    public Map execute() throws Exception {
        Map rsvMap = new HashMap();
        try (PythonInterpreter pyInterp = new PythonInterpreter()) {
            pyInterp.exec("print('Hello Python World!')");
        }
        return rsvMap;
    }

}
