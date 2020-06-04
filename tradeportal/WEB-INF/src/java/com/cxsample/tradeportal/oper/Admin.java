package com.cxsample.tradeportal.oper;

import com.opensymphony.xwork2.ActionSupport;
import com.cxsample.tradeportal.model.ProfileService;
import com.cxsample.tradeportal.AdminSupport;

import java.util.List;

import org.apache.struts2.ServletActionContext;

public class Admin extends AdminSupport
{
    private List addresses;

    public String execute() throws Exception
    {
        addresses = ProfileService.getAllEmail();
        super.execute();
        return SUCCESS;
    }

    public List getAddresses() {
        return addresses;
    }

    public void setAddresses(List addresses) {
        this.addresses = addresses;
    }
}
