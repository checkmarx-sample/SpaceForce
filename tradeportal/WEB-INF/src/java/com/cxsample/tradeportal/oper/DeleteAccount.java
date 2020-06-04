package com.cxsample.tradeportal.oper;

import com.cxsample.tradeportal.AdminSupport;
import com.cxsample.tradeportal.model.Account;
import com.cxsample.tradeportal.model.AccountService;
import com.cxsample.tradeportal.model.Profile;
import com.cxsample.tradeportal.model.ProfileService;
import java.util.List;
import org.apache.struts2.ServletActionContext;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.cxsample.tradeportal:
//            AdminSupport

public class DeleteAccount extends AdminSupport
{
    private List profiles;

    public DeleteAccount()
    {
    }

    public String execute() throws Exception
    {
        javax.servlet.http.HttpServletRequest request = ServletActionContext.getRequest();
        profiles = ProfileService.getAllProfiles();
        super.execute();
        return "success";
    }

    public List getProfiles()
    {
        return profiles;
    }

    public void setProfiles(List profiles)
    {
        this.profiles = profiles;
    }
}
