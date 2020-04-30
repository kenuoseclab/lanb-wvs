import IndexZui from '@/views/style/IndexZui'

const TaskRouter = {
  path: '/task',
  name: 'task',
  component: IndexZui,
  children: [
    {
      name: 'taskInfoPage',
      path: 'task-info-page',
      components: {
        content: require('@/views/task/TaskInfoPage').default
      }
    },
    {
      name: 'taskTable',
      path: 'task-table',
      components: {
        content: require('@/views/task/TaskTable').default
      }
    },
    {
      name: 'taskLogTable',
      path: 'task-log-table',
      components: {
        content: require('@/views/task/TaskLogTable').default
      }
    },
    {
      name: 'taskAttrTable',
      path: 'task-attr-table',
      components: {
        content: require('@/views/task/TaskAttrTable').default
      }
    },
    {
      name: 'taskCreate',
      path: 'task-create',
      components: {
        content: require('@/views/task/TaskCreate').default
      }
    }
  ]
}

export default TaskRouter
