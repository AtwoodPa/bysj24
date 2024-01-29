import request from '@/utils/request'

// 查询留观查询列表
export function listObserve(query) {
  return request({
    url: '/vaccine/observe/list',
    method: 'get',
    params: query
  })
}

// 查询留观查询详细
export function getObserve(id) {
  return request({
    url: '/vaccine/observe/' + id,
    method: 'get'
  })
}

// 新增留观查询
export function addObserve(data) {
  return request({
    url: '/vaccine/observe',
    method: 'post',
    data: data
  })
}

// 修改留观查询
export function updateObserve(data) {
  return request({
    url: '/vaccine/observe',
    method: 'put',
    data: data
  })
}

// 删除留观查询
export function delObserve(id) {
  return request({
    url: '/vaccine/observe/' + id,
    method: 'delete'
  })
}
