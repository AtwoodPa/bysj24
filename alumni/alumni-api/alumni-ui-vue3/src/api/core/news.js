import request from '@/utils/request'

// 查询新闻动态管理列表
export function listNews(query) {
  return request({
    url: '/core/news/list',
    method: 'get',
    params: query
  })
}

// 查询新闻动态管理详细
export function getNews(id) {
  return request({
    url: '/core/news/' + id,
    method: 'get'
  })
}

// 新增新闻动态管理
export function addNews(data) {
  return request({
    url: '/core/news',
    method: 'post',
    data: data
  })
}

// 修改新闻动态管理
export function updateNews(data) {
  return request({
    url: '/core/news',
    method: 'put',
    data: data
  })
}

// 删除新闻动态管理
export function delNews(id) {
  return request({
    url: '/core/news/' + id,
    method: 'delete'
  })
}
