
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@UI:{
  headerInfo:{
    typeName: 'Employee Status',
    typeNamePlural: 'Employee Statuses',
    title:{ type: #STANDARD, value: 'EmpStatus' }
  }
}

define view entity ZC_EmpStatus_ENH as projection on ZI_EmpStatus_ENH
{
  key StatusID,
  key Empid,
      EmpStatus,
      _Employee : redirected to parent ZC_Employee_ENH
}
