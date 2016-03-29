using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Office.Interop.Outlook;

namespace ContactApp
{
    public partial class SentEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ClickMail(object sender, EventArgs e)
        {
            try
            {
                Microsoft.Office.Interop.Outlook.Application App = new Microsoft.Office.Interop.Outlook.Application();
                Microsoft.Office.Interop.Outlook.MailItem content = (Microsoft.Office.Interop.Outlook.MailItem)App.CreateItem(Microsoft.Office.Interop.Outlook.OlItemType.olMailItem);
                content.HTMLBody = txtemailcontaint.Text;
                content.Subject = txtsub.Text;
                Microsoft.Office.Interop.Outlook.Recipients oRecips = (Microsoft.Office.Interop.Outlook.Recipients)content.Recipients;
                Microsoft.Office.Interop.Outlook.Recipient oRecip = (Microsoft.Office.Interop.Outlook.Recipient)oRecips.Add(txtto.Text);
                //Microsoft.Office.Interop.Outlook.Recipient oRecipnew = (Microsoft.Office.Interop.Outlook.Recipient)oRecips.Add(txtcc.Text);
                oRecip.Resolve();
                content.Send();
                oRecip = null;
                oRecips = null;
                content = null;
                App = null;
            }
            catch (System.Exception ex)
            {
            }
        }
    }


}