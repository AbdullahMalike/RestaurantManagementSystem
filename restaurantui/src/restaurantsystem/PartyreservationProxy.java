package restaurantsystem;

public class PartyreservationProxy implements restaurantsystem.Partyreservation {
  private String _endpoint = null;
  private restaurantsystem.Partyreservation partyreservation = null;
  
  public PartyreservationProxy() {
    _initPartyreservationProxy();
  }
  
  public PartyreservationProxy(String endpoint) {
    _endpoint = endpoint;
    _initPartyreservationProxy();
  }
  
  private void _initPartyreservationProxy() {
    try {
      partyreservation = (new restaurantsystem.PartyreservationServiceLocator()).getpartyreservation();
      if (partyreservation != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)partyreservation)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)partyreservation)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (partyreservation != null)
      ((javax.xml.rpc.Stub)partyreservation)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public restaurantsystem.Partyreservation getPartyreservation() {
    if (partyreservation == null)
      _initPartyreservationProxy();
    return partyreservation;
  }
  
  public void party(java.lang.String name, int members, java.lang.String date, int totalSeats, java.lang.String partyType, java.lang.String time, long phoneNumber, int ID) throws java.rmi.RemoteException{
    if (partyreservation == null)
      _initPartyreservationProxy();
    partyreservation.party(name, members, date, totalSeats, partyType, time, phoneNumber, ID);
  }
  
  
}