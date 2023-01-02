/**
 * PartyreservationService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package restaurantsystem;

public interface PartyreservationService extends javax.xml.rpc.Service {
    public java.lang.String getpartyreservationAddress();

    public restaurantsystem.Partyreservation getpartyreservation() throws javax.xml.rpc.ServiceException;

    public restaurantsystem.Partyreservation getpartyreservation(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
