package com.freetread.entities



import org.junit.*
import grails.test.mixin.*


@TestFor(PostController)
@Mock(Post)
class PostControllerTests {


    @Test
    void testIndex() {
        controller.index()
        assert "/post/list" == response.redirectedUrl
    }

    @Test
    void testList() {

        def model = controller.list()

        assert model.postInstanceList.size() == 0
        assert model.postInstanceTotal == 0

    }

    @Test
    void testCreate() {
       def model = controller.create()

       assert model.postInstance != null


    }

    @Test
    void testSave() {
        controller.save()

        assert model.postInstance != null
        assert view == '/post/create'

        // TODO: Populate valid properties

        controller.save()

        assert response.redirectedUrl == '/post/show/1'
        assert controller.flash.message != null
        assert Post.count() == 1
    }


    @Test
    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/post/list'


        def post = new Post()

        // TODO: populate domain properties

        assert post.save() != null

        params.id = post.id

        def model = controller.show()

        assert model.postInstance == post
    }

    @Test
    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/post/list'


        def post = new Post()

        // TODO: populate valid domain properties

        assert post.save() != null

        params.id = post.id

        def model = controller.edit()

        assert model.postInstance == post
    }

    @Test
    void testUpdate() {

        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/post/list'

        response.reset()


        def post = new Post()

        // TODO: populate valid domain properties

        assert post.save() != null

        // test invalid parameters in update
        params.id = post.id

        controller.update()

        assert view == "/post/edit"
        assert model.postInstance != null

        post.clearErrors()

        // TODO: populate valid domain form parameter
        controller.update()

        assert response.redirectedUrl == "/post/show/$post.id"
        assert flash.message != null
    }

    @Test
    void testDelete() {
        controller.delete()

        assert flash.message != null
        assert response.redirectedUrl == '/post/list'

        response.reset()

        def post = new Post()

        // TODO: populate valid domain properties
        assert post.save() != null
        assert Post.count() == 1

        params.id = post.id

        controller.delete()

        assert Post.count() == 0
        assert Post.get(post.id) == null
        assert response.redirectedUrl == '/post/list'


    }


}