package com.entity.view;

import com.entity.YingpinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 应聘信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-05-13 10:02:23
 */
@TableName("yingpinxinxi")
public class YingpinxinxiView  extends YingpinxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	private int role;

	public YingpinxinxiView(){
	}
 
 	public YingpinxinxiView(YingpinxinxiEntity yingpinxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, yingpinxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}
}
