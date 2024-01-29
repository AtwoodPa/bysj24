import request from '@/utils/request'

// 查询疫苗接种站点管理列表
export function listInoculateSite(query) {
  return request({
    url: '/vaccine/inoculateSite/list',
    method: 'get',
    params: query
  })
}

// 查询疫苗接种站点管理详细
export function getInoculateSite(id) {
  return request({
    url: '/vaccine/inoculateSite/' + id,
    method: 'get'
  })
}

// 新增疫苗接种站点管理
export function addInoculateSite(data) {
  return request({
    url: '/vaccine/inoculateSite',
    method: 'post',
    data: data
  })
}

// 修改疫苗接种站点管理
export function updateInoculateSite(data) {
  return request({
    url: '/vaccine/inoculateSite',
    method: 'put',
    data: data
  })
}

// 删除疫苗接种站点管理
export function delInoculateSite(id) {
  return request({
    url: '/vaccine/inoculateSite/' + id,
    method: 'delete'
  })
}
