import request from '@/utils/request'

// 查询文章内容管理列表
export function listArticle(query) {
  return request({
    url: '/core/article/list',
    method: 'get',
    params: query
  })
}

// 查询文章内容管理详细
export function getArticle(id) {
  return request({
    url: '/core/article/' + id,
    method: 'get'
  })
}

// 新增文章内容管理
export function addArticle(data) {
  return request({
    url: '/core/article',
    method: 'post',
    data: data
  })
}

// 修改文章内容管理
export function updateArticle(data) {
  return request({
    url: '/core/article',
    method: 'put',
    data: data
  })
}

// 删除文章内容管理
export function delArticle(id) {
  return request({
    url: '/core/article/' + id,
    method: 'delete'
  })
}
