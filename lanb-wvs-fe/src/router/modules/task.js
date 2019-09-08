import IndexZui from '@/page/IndexZui'

const TaskRouter = {
  path: '/task',
  name: 'Task',
  component: IndexZui,
  children: [
    {
      path: 'task-info-page',
      components: {
        content: require('@/page/task/TaskInfoPage').default
      }
    },
    {
      path: 'task-table',
      components: {
        content: require('@/page/task/TaskTable').default
      }
    },
    {
      path: 'task-attr-table',
      components: {
        content: require('@/page/task/TaskAttrTable').default
      }
    },
    {
      path: 'task-create',
      components: {
        content: require('@/page/task/TaskCreate').default
      }
    }
  ]
}

export default TaskRouter
