package com.cxsample.tradeportal.oper;

import com.cxsample.tradeportal.AdminSupport;
import com.cxsample.tradeportal.model.Profile;
import com.cxsample.tradeportal.model.ProfileService;
import java.util.List;
import org.apache.struts2.ServletActionContext;

// Referenced classes of package com.cxsample.tradeportal:
//            AdminSupport

public class BrowseAccount extends AdminSupport
{

    private List profiles;

    public BrowseAccount()
    {
    }

    public String execute() throws Exception
    {
        javax.servlet.http.HttpServletRequest request = ServletActionContext.getRequest();
        profiles = ProfileService.getAllProfiles();
        Profile profile = new Profile();
        profile.setUsername("[All Accounts]");
        profiles.add(0, profile);
        profile = new Profile();
        profile.setUsername("Select a customer");
        profiles.add(0, profile);
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
