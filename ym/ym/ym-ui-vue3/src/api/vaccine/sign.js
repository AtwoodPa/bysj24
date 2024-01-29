import request from '@/utils/request'

// 查询接种签到列表
export function listSign(query) {
  return request({
    url: '/vaccine/sign/list',
    method: 'get',
    params: query
  })
}

// 查询接种签到详细
export function getSign(id) {
  return request({
    url: '/vaccine/sign/' + id,
    method: 'get'
  })
}

// 新增接种签到
export function addSign(data) {
  return request({
    url: '/vaccine/sign',
    method: 'post',
    data: data
  })
}

// 修改接种签到
export function updateSign(data) {
  return request({
    url: '/vaccine/sign',
    method: 'put',
    data: data
  })
}

// 删除接种签到
export function delSign(id) {
  return request({
    url: '/vaccine/sign/' + id,
    method: 'delete'
  })
}
