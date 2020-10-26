package com.bestpricemarket.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bestpricemarket.domain.GoodsVO;
import com.bestpricemarket.domain.MemberVO;
import com.bestpricemarket.persistence.PaymentDAO;

//@Service : 해당 클래스를 서비스 객체로 처리 하겠다.(스프링에서 인식)

@Service
public class PaymentServiceImpl implements PaymentService{

	// DB처리하기위한 객체 주입
	@Inject
	private PaymentDAO pdao;
	
	@Override
	public MemberVO getMember(String id) throws Exception {
		MemberVO vo = pdao.getMember(id);	
		
		return vo;
	}

	@Override
	public GoodsVO getGoods(int gno) throws Exception {
		GoodsVO gvo = pdao.getGoods(gno);
		return gvo;
	}

	

}
