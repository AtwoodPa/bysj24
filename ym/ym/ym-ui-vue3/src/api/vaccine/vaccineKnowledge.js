import request from '@/utils/request'

// 查询存储疫苗知识信息的列表
export function listVaccineKnowledge(query) {
  return request({
    url: '/vaccine/vaccineKnowledge/list',
    method: 'get',
    params: query
  })
}

// 查询存储疫苗知识信息的详细
export function getVaccineKnowledge(ID) {
  return request({
    url: '/vaccine/vaccineKnowledge/' + ID,
    method: 'get'
  })
}

// 新增存储疫苗知识信息的
export function addVaccineKnowledge(data) {
  return request({
    url: '/vaccine/vaccineKnowledge',
    method: 'post',
    data: data
  })
}

// 修改存储疫苗知识信息的
export function updateVaccineKnowledge(data) {
  return request({
    url: '/vaccine/vaccineKnowledge',
    method: 'put',
    data: data
  })
}

// 删除存储疫苗知识信息的
export function delVaccineKnowledge(ID) {
  return request({
    url: '/vaccine/vaccineKnowledge/' + ID,
    method: 'delete'
  })
}
