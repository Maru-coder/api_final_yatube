from rest_framework import permissions


class IsSafeMethodOrIsAuthor(permissions.BasePermission):
    def has_object_permission(self, request, view, obj) -> bool:
        del view
        return (
            request.method in permissions.SAFE_METHODS
            or obj.author == request.user
        )
