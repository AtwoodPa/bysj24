import request from '@/utils/request'

// 查询房源特色列表
export function listFeature(query) {
  return request({
    url: '/core/feature/list',
    method: 'get',
    params: query
  })
}

// 查询房源特色详细
export function getFeature(id) {
  return request({
    url: '/core/feature/' + id,
    method: 'get'
  })
}

// 新增房源特色
export function addFeature(data) {
  return request({
    url: '/core/feature',
    method: 'post',
    data: data
  })
}

// 修改房源特色
export function updateFeature(data) {
  return request({
    url: '/core/feature',
    method: 'put',
    data: data
  })
}

// 删除房源特色
export function delFeature(id) {
  return request({
    url: '/core/feature/' + id,
    method: 'delete'
  })
}
