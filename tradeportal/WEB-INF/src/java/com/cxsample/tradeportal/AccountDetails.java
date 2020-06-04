package com.cxsample.tradeportal;

import com.opensymphony.xwork2.ActionSupport;
import com.cxsample.tradeportal.database.ConnectionFactory;
import com.cxsample.tradeportal.model.TransactionService;
import com.cxsample.tradeportal.model.Profile;
import com.cxsample.tradeportal.model.ProfileService;

import java.util.List;

import net.sf.hibernate.Session;
import net.sf.hibernate.Query;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by IntelliJ IDEA.
 * User: elee
 * Date: Mar 5, 2008
 * Time: 7:11:57 PM
 * To change this template use File | Settings | File Templates.
 */
public class AccountDetails extends ActionSupport
{
	private String name;
	private String ssn;
	private List transactions;
    private String acctno;
    private boolean DEBUG = false;

    public String execute() throws Exception
    {
		HttpServletRequest request = ServletActionContext.getRequest();
		String username = request.getRemoteUser();

		Profile p = ProfileService.getProfile(username);
		name = p.getFirstname() + " " + p.getLastname();
		ssn = p.getSsno();

        if(DEBUG)
            transactions = TransactionService.getTransactionsDebug(getAcctno());
        else
            transactions = TransactionService.getTransactions(getAcctno());

        return SUCCESS;
    }

    public List getTransactions() {
        return transactions;
    }

    public void setTransactions(List transactions) {
        this.transactions = transactions;
    }

    public String getAcctno() {
        return acctno;
    }

    public void setAcctno(String acctno) {
        this.acctno = acctno;
    }

	public String getName() {
		return name;
	}

	public String getSsn() {
		return ssn;
	}
}
