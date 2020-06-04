package com.cxsample.tradeportal;

import com.opensymphony.xwork2.ActionSupport;
import com.cxsample.tradeportal.database.ConnectionFactory;
import com.cxsample.tradeportal.oper.AdminUtil;
import com.cxsample.tradeportal.model.MessageService;
import net.sf.hibernate.Session;
import net.sf.hibernate.Query;
import org.apache.struts2.ServletActionContext;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Cookie;

public class Messages extends AdminSupport
{
    private List messages;

    public String execute() throws Exception
    {
        messages = MessageService.getMessage(ServletActionContext.getRequest().getRemoteUser());
        super.execute();
        return SUCCESS;
    }

    public List getMessages() {
        return messages;
    }

    public void setMessages(List messages) {
        this.messages = messages;
    }
}
