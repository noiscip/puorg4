package kr.or.picsion.notice.socket;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import kr.or.picsion.HomeController;
import kr.or.picsion.message.dao.MessageDao;

public class NoticeSocketHandler extends TextWebSocketHandler {

	@Autowired
	private SqlSession sqlSession;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {

	}

	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {

	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

		MessageDao dao = sqlSession.getMapper(MessageDao.class);

		this.logger.info(message.getPayload());

/*		session.sendMessage(new TextMessage(dao.count_receive_note(message.getPayload())));   */
		// 현재 수신자에게 몇개의 메세지가 와있는지 디비에서 검색함.

	}

}
