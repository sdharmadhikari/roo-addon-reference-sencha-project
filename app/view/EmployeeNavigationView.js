/*
 * File: app/view/EmployeeNavigationView.js
 *
 * This file was generated by Sencha Architect version 3.0.4.
 * http://www.sencha.com/products/architect/
 *
 * This file requires use of the Sencha Touch 2.3.x library, under independent license.
 * License of Sencha Architect does not include license for Sencha Touch 2.3.x. For more
 * details see http://www.sencha.com/license or contact license@sencha.com.
 *
 * This file will be auto-generated each and everytime you save your project.
 *
 * Do NOT hand edit this file.
 */

Ext.define('SenchaCrud.view.EmployeeNavigationView', {
    extend: 'Ext.navigation.View',
    alias: 'widget.employeeNavigationView',

    requires: [
        'SenchaCrud.view.EmployeeList',
        'Ext.navigation.Bar',
        'Ext.Button',
        'Ext.dataview.List'
    ],

    config: {
        itemId: 'employeeNavigationView',
        navigationBar: {
            docked: 'top',
            items: [
                {
                    xtype: 'button',
                    itemId: 'employeeRefreshButton',
                    iconCls: 'refresh',
                    text: ''
                },
                {
                    xtype: 'button',
                    align: 'right',
                    itemId: 'employeeAddButton',
                    iconCls: 'add'
                }
            ]
        },
        items: [
            {
                xtype: 'employeeList'
            }
        ]
    }

});