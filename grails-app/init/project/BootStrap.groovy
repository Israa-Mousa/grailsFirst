package project
 import project.security.Role
import project.security.RequestMap
import project.security.UserRole
import project.security.Users


class BootStrap {

    def init = { servletContext ->
        def springSecurityService

        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)

        def adminUser = Users.findByUsername('admin') ?: new Users(
                username: 'admin',
                password: "admin",
                enabled: true).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) {
            UserRole.create adminUser, adminRole
        }

        RequestMap.deleteAll()

        [
                [pattern: '/',               access: ['permitAll']],
                [pattern: '',               access: ['permitAll']],
                [pattern: '/error',          access: ['permitAll']],
                [pattern: '/index',          access: ['permitAll']],
                [pattern: '/index.gsp',      access: ['permitAll']],
                [pattern: '/shutdown',       access: ['permitAll']],
                [pattern: '/assets/**',      access: ['permitAll']],
                [pattern: '/**/js/**',       access: ['permitAll']],
                [pattern: '/**/css/**',      access: ['permitAll']],
                [pattern: '/**/images/**',   access: ['permitAll']],
                [pattern: '/**/favicon.ico', access: ['permitAll']]
        ]?.each{

            new RequestMap(url: it.get('pattern') ,configAttribute: it.get('access')).save()
        }

        new RequestMap(url: '/login/**' ,configAttribute: 'permitAll').save()
        new RequestMap(url: '/**' ,configAttribute: 'permitAll').save()

        new RequestMap(url: '/logout/**' ,configAttribute: 'permitAll').save()
        new RequestMap(url: '/LogoutCustom/**' ,configAttribute: 'permitAll').save()

        new RequestMap(url: '/client/create' ,configAttribute: 'ROLE_ADMIN').save()
        new RequestMap(url: '/client/index' ,configAttribute: 'ROLE_ADMIN').save()
        new RequestMap(url: '/address/index' ,configAttribute:  'ROLE_ADMIN').save()
        new RequestMap(url: '/car/save' ,configAttribute:  'ROLE_ADMIN').save()
        new RequestMap(url: '/car/edit' , configAttribute: 'ROLE_ADMIN').save()
        new RequestMap(url: '/car/update' ,configAttribute:  'ROLE_ADMIN').save()
        new RequestMap(url: '/car/index' , configAttribute: 'ROLE_ADMIN,ROLE_USER').save()
        new RequestMap(url: '/car/filter' ,configAttribute:  'ROLE_ADMIN,ROLE_USER').save()
        new RequestMap(url: '/car/show' , configAttribute:  'ROLE_ADMIN,ROLE_USER').save()
        new RequestMap(url: '/car/show' , configAttribute:  'ROLE_ADMIN,ROLE_USER').save()
    }
    def destroy = {
    }
}
