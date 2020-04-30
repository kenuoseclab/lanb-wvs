package com.colodoo.scan.module;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * 漏洞名称: 测试POC
 * 漏洞描述: ******
 * 漏洞关联ID: ******
 * 作者: ******
 * 时间: ******
 */
@Component
public class ExamplePOC {

    /**
     * URL: 地址
     *
     * @param params
     * @return
     */
    public boolean test(Map params) throws IOException {

        boolean flag = false;
        // String url = "http://localhost:1234/poc/demoPoc?value=1&key=2";
        String url = (String) params.get("url");

        // 生成随及UUID
        String uuid = UUID.randomUUID().toString();

        List<String> keyList = new ArrayList<String>();
        // 取可以设置的参数名
        if (url.contains("?")) {
            String parms = url.split("\\?")[1];
            url = url.split("\\?")[0];
            String[] paramArr = parms.split("&");

            for (String parm : paramArr) {
                String key = parm.split("=")[0];
                keyList.add(key);
            }

        }

        StringBuffer reqParm = new StringBuffer();
        reqParm.append("?");
        for (String key : keyList) {
            reqParm.append(key)
                    .append("=")
                    .append(uuid)
                    .append("&");
        }

        url = url + reqParm.toString();

        // 请求数据
        CloseableHttpClient httpClient = HttpClients.createDefault();
        HttpGet httpGet = new HttpGet(url);
        CloseableHttpResponse response = httpClient.execute(httpGet);
        HttpEntity httpEntity = response.getEntity();
        String content = EntityUtils.toString(httpEntity, "utf8");

        System.out.println(content);

        // 检查XSS
        if (content != null && content.contains(uuid)) {
            flag = true;
            // System.out.println("检测出漏洞, " + url);
        }

        System.out.println("检查结果: " + flag);

        return flag;
    }


}
