package com.colodoo.manager.demo.service.impl;

import com.colodoo.manager.demo.entity.Demo;
import com.colodoo.manager.demo.service.DemoMapper;
import com.colodoo.manager.demo.service.IDemoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author colodoo
 * @since 2020-05-28
 */
@Service
public class DemoServiceImpl extends ServiceImpl<DemoMapper, Demo> implements IDemoService {

}
