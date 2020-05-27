package com.colodoo.manager.demo.entity;

import java.time.LocalDateTime;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author colodoo
 * @since 2020-05-28
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class Demo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 例子ID
     */
    private String demoId;

    /**
     * 例子名
     */
    private String demoName;

    /**
     * 创建时间
     */
    private LocalDateTime createDate;


}
