/**
 * Partyreservation.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package restaurantsystem;

public interface Partyreservation extends java.rmi.Remote {
    public void party(java.lang.String name, int members, java.lang.String date, int totalSeats, java.lang.String partyType, java.lang.String time, long phoneNumber, int ID) throws java.rmi.RemoteException;
}
