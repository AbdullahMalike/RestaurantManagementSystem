package restaurantsystem;

public class UserinformationProxy implements restaurantsystem.Userinformation {
  private String _endpoint = null;
  private restaurantsystem.Userinformation userinformation = null;
  
  public UserinformationProxy() {
    _initUserinformationProxy();
  }
  
  public UserinformationProxy(String endpoint) {
    _endpoint = endpoint;
    _initUserinformationProxy();
  }
  
  private void _initUserinformationProxy() {
    try {
      userinformation = (new restaurantsystem.UserinformationServiceLocator()).getuserinformation();
      if (userinformation != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)userinformation)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)userinformation)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (userinformation != null)
      ((javax.xml.rpc.Stub)userinformation)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public restaurantsystem.Userinformation getUserinformation() {
    if (userinformation == null)
      _initUserinformationProxy();
    return userinformation;
  }
  
  public void adduser(java.lang.String name, long number, java.lang.String address, java.lang.String areaName, java.lang.String email, int ID) throws java.rmi.RemoteException{
    if (userinformation == null)
      _initUserinformationProxy();
    userinformation.adduser(name, number, address, areaName, email, ID);
  }
  
  
}