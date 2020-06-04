package com.cxsample.tradeportal;

import com.opensymphony.xwork2.ActionSupport;
import com.cxsample.tradeportal.database.ConnectionFactory;
import com.cxsample.tradeportal.model.Account;
import com.cxsample.tradeportal.model.AccountService;
import net.sf.hibernate.Session;
import net.sf.hibernate.Query;
import net.sf.hibernate.Criteria;
import net.sf.hibernate.expression.Expression;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class PayBill extends AdminSupport
{
    private List accounts;

    public String execute() throws Exception
    {
        HttpServletRequest request = ServletActionContext.getRequest();
	    String username = request.getRemoteUser();
        accounts = AccountService.getAccounts(username);
	    super.execute();
        return SUCCESS;
    }

    public List getAccounts() {
        return accounts;
    }
}
