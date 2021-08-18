using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace StokTakipWeb
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
        }
        /*protected void Application_AuthenticateRequest(object sender, EventArgs e)

        {

            // look if any security information exists for this request

            if (HttpContext.Current.User != null)

            {

                // see if this user is authenticated, any authenticated cookie (ticket) exists for this user

                if (HttpContext.Current.User.Identity.IsAuthenticated)

                {

                    // see if the authentication is done using FormsAuthentication

                    if (HttpContext.Current.User.Identity is FormsIdentity)

                    {

                        // Get the roles stored for this request from the ticket

                        // get the identity of the user

                        FormsIdentity identity = (FormsIdentity)HttpContext.Current.User.Identity;

                        // get the forms authetication ticket of the user

                        FormsAuthenticationTicket ticket = identity.Ticket;

                        // get the roles stored as UserData into the ticket

                        string[] roles = ticket.UserData.Split(',');

                        // create generic principal and assign it to the current request

                        HttpContext.Current.User = new System.Security.Principal.GenericPrincipal(identity, roles);



                    }

                }

            }

        }*/
    }
}