package com.example.jfi.classes;

public class PinCode {
    private final String pin;
    private static final PinCode pinCode = new PinCode("0908");
    public PinCode(String pin) {
        this.pin = pin;
    }
    public static PinCode getPinCode() {
        return pinCode;
    }
    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {

    }
}
