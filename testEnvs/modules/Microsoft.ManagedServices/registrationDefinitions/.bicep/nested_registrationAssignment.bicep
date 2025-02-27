param registrationDefinitionId string
param registrationAssignmentId string

resource registrationAssignment 'Microsoft.ManagedServices/registrationAssignments@2019-09-01' = {
  name: registrationAssignmentId
  properties: {
    registrationDefinitionId: registrationDefinitionId
  }
}

@description('The name of the registration assignment.')
output name string = registrationAssignment.name

@description('The resource ID of the registration assignment.')
output resourceId string = registrationAssignment.id
