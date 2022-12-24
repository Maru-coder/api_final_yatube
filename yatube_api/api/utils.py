from rest_framework.generics import get_object_or_404

from posts.models import Post


def get_post(obj):
    return get_object_or_404(Post, id=obj.kwargs.get('post_id'))
