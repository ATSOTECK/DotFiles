/*
 * Skyler Burwell
 * skburwell@gmail.com
 * 28 - January - 2018
 * Ax_Burwell_Skyler
 * CS 17.11 6991
 * This file contains useful methods to aid in the debugging process. Modeled after the macros present in C++.
 * Written using IntelliJ IDEA on OS X.
 */

package edu.srjc.burwell.skyler.A3;

public class Debug {

    //Public------------------------------------------------------------------------------------------------------------

    // __LINE__
    public static int getLineNumber() {
        return Thread.currentThread().getStackTrace()[2].getLineNumber();
    }

    // __FILE__
    public static String getCurrentFile() {
        return Thread.currentThread().getStackTrace()[2].getFileName();
    }

    // __FUNCTION__
    public static String getCurrentFunc() {
        return Thread.currentThread().getStackTrace()[2].getMethodName();
    }

    //Impl--------------------------------------------------------------------------------------------------------------

    // __LINE__
    private static int getLineNumberImpl() {
        return Thread.currentThread().getStackTrace()[3].getLineNumber();
    }

    // __FILE__
    private static String getCurrentFileImpl() {
        return Thread.currentThread().getStackTrace()[3].getFileName();
    }

    // __FUNCTION__
    private static String getCurrentFuncImpl() {
        return Thread.currentThread().getStackTrace()[3].getMethodName();
    }

    //Msg---------------------------------------------------------------------------------------------------------------

    // Show line number and source file of the caller.
    public static void here() {
        System.out.println("here line " + getLineNumberImpl() + " " + getCurrentFileImpl());
    }

    // Debug message with the location of the caller.
    public static void tracemsg(String msg) {
        System.out.println("F: " + getCurrentFileImpl() + " M: " + getCurrentFuncImpl() + " L:" + getLineNumberImpl() + " \"" + msg + "\"");
    }

    // Error message with the location of the caller.
    public static void error(String err) {
        System.err.println("Error \"" + err + "\" on line #" + getLineNumberImpl() + " in " + getCurrentFileImpl());
    }

    public static void db(String msg) {
        System.out.print(msg);
    }

    public static void dbln(String msg) {
        System.out.println(msg);
    }

    public static void ln() {
        System.out.println("");
    }

    //Stack trace-------------------------------------------------------------------------------------------------------

    public static void trace() {
        ln();
        dbln("Stack trace:");

        int l = Thread.currentThread().getStackTrace().length;
        StackTraceElement[] elements = Thread.currentThread().getStackTrace();

        for (int i = 0; i < l; ++i) {
            dbln("\t" + elements[i].toString());
        }

        ln();
    }
}
