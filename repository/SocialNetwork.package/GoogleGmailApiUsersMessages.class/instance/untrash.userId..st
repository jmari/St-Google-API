generated
untrash: id userId: userId 
	"
		Removes the specified message from the trash.

		Parameters, * = required, optional parameters in optionsDict

		id (String*): The ID of the message to remove from Trash.
		userId (String*): The user's email address. The special value me can be used to indicate the authenticated user.
	"

	| action path values |

	action := #POST.
	values := self argumentsFor: thisContext.
	path := self basePath, ( self 
		replacePlaceholdersIn: '{userId}/messages/{id}/untrash' with: values ).

	^ self makeRequestTo: path usingMethod: action with: nil.