import request from '@/utils/request'

// 查询论坛评论管理列表
export function listForumcomment(query) {
  return request({
    url: '/vaccine/forumcomment/list',
    method: 'get',
    params: query
  })
}

// 查询论坛评论管理详细
export function getForumcomment(id) {
  return request({
    url: '/vaccine/forumcomment/' + id,
    method: 'get'
  })
}

// 新增论坛评论管理
export function addForumcomment(data) {
  return request({
    url: '/vaccine/forumcomment',
    method: 'post',
    data: data
  })
}

// 修改论坛评论管理
export function updateForumcomment(data) {
  return request({
    url: '/vaccine/forumcomment',
    method: 'put',
    data: data
  })
}

// 删除论坛评论管理
export function delForumcomment(id) {
  return request({
    url: '/vaccine/forumcomment/' + id,
    method: 'delete'
  })
}
