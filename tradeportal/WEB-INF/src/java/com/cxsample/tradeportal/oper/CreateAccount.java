package com.cxsample.tradeportal.oper;

import com.cxsample.tradeportal.AdminSupport;
import com.cxsample.tradeportal.model.ProfileService;
import java.util.List;
import org.apache.struts2.ServletActionContext;

// Referenced classes of package com.cxsample.tradeportal:
//            AdminSupport

public class CreateAccount extends AdminSupport
{

    private List profiles;

    public CreateAccount()
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
