@secure()
param ghpat string // github pat

var username = 'mortenp1337'

resource githublogicapp 'Microsoft.Logic/workflows@2019-05-01' = {
  name: 'githublogicapp-prod'
  location: 'westeurope'
  properties: {
    parameters: {

    }
    state: 'Enabled'
    definition: {
      '$schema': 'https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#'
      contentVersion: '1.0.0.0'
      parameters: {}
      staticResults: {
        HTTP0: {
          status: 'Succeeded'
          outputs: {
            headers: {}
            statusCode: 'OK'
          }
        }
      }
      triggers: {
        manual: {
          type: 'Request'
          kind: 'Http'
          inputs: {
            schema: {
              properties: {
                action: {
                  type: 'string'
                }
                organization: {
                  properties: {
                    avatar_url: {
                      type: 'string'
                    }
                    description: {}
                    events_url: {
                      type: 'string'
                    }
                    hooks_url: {
                      type: 'string'
                    }
                    id: {
                      type: 'integer'
                    }
                    issues_url: {
                      type: 'string'
                    }
                    login: {
                      type: 'string'
                    }
                    members_url: {
                      type: 'string'
                    }
                    node_id: {
                      type: 'string'
                    }
                    public_members_url: {
                      type: 'string'
                    }
                    repos_url: {
                      type: 'string'
                    }
                    url: {
                      type: 'string'
                    }
                  }
                  type: 'object'
                }
                repository: {
                  properties: {
                    allow_forking: {
                      type: 'boolean'
                    }
                    archive_url: {
                      type: 'string'
                    }
                    archived: {
                      type: 'boolean'
                    }
                    assignees_url: {
                      type: 'string'
                    }
                    blobs_url: {
                      type: 'string'
                    }
                    branches_url: {
                      type: 'string'
                    }
                    clone_url: {
                      type: 'string'
                    }
                    collaborators_url: {
                      type: 'string'
                    }
                    comments_url: {
                      type: 'string'
                    }
                    commits_url: {
                      type: 'string'
                    }
                    compare_url: {
                      type: 'string'
                    }
                    contents_url: {
                      type: 'string'
                    }
                    contributors_url: {
                      type: 'string'
                    }
                    created_at: {
                      type: 'string'
                    }
                    default_branch: {
                      type: 'string'
                    }
                    deployments_url: {
                      type: 'string'
                    }
                    description: {}
                    disabled: {
                      type: 'boolean'
                    }
                    downloads_url: {
                      type: 'string'
                    }
                    events_url: {
                      type: 'string'
                    }
                    fork: {
                      type: 'boolean'
                    }
                    forks: {
                      type: 'integer'
                    }
                    forks_count: {
                      type: 'integer'
                    }
                    forks_url: {
                      type: 'string'
                    }
                    full_name: {
                      type: 'string'
                    }
                    git_commits_url: {
                      type: 'string'
                    }
                    git_refs_url: {
                      type: 'string'
                    }
                    git_tags_url: {
                      type: 'string'
                    }
                    git_url: {
                      type: 'string'
                    }
                    has_downloads: {
                      type: 'boolean'
                    }
                    has_issues: {
                      type: 'boolean'
                    }
                    has_pages: {
                      type: 'boolean'
                    }
                    has_projects: {
                      type: 'boolean'
                    }
                    has_wiki: {
                      type: 'boolean'
                    }
                    homepage: {}
                    hooks_url: {
                      type: 'string'
                    }
                    html_url: {
                      type: 'string'
                    }
                    id: {
                      type: 'integer'
                    }
                    is_template: {
                      type: 'boolean'
                    }
                    issue_comment_url: {
                      type: 'string'
                    }
                    issue_events_url: {
                      type: 'string'
                    }
                    issues_url: {
                      type: 'string'
                    }
                    keys_url: {
                      type: 'string'
                    }
                    labels_url: {
                      type: 'string'
                    }
                    language: {}
                    languages_url: {
                      type: 'string'
                    }
                    license: {}
                    merges_url: {
                      type: 'string'
                    }
                    milestones_url: {
                      type: 'string'
                    }
                    mirror_url: {}
                    name: {
                      type: 'string'
                    }
                    node_id: {
                      type: 'string'
                    }
                    notifications_url: {
                      type: 'string'
                    }
                    open_issues: {
                      type: 'integer'
                    }
                    open_issues_count: {
                      type: 'integer'
                    }
                    owner: {
                      properties: {
                        avatar_url: {
                          type: 'string'
                        }
                        events_url: {
                          type: 'string'
                        }
                        followers_url: {
                          type: 'string'
                        }
                        following_url: {
                          type: 'string'
                        }
                        gists_url: {
                          type: 'string'
                        }
                        gravatar_id: {
                          type: 'string'
                        }
                        html_url: {
                          type: 'string'
                        }
                        id: {
                          type: 'integer'
                        }
                        login: {
                          type: 'string'
                        }
                        node_id: {
                          type: 'string'
                        }
                        organizations_url: {
                          type: 'string'
                        }
                        received_events_url: {
                          type: 'string'
                        }
                        repos_url: {
                          type: 'string'
                        }
                        site_admin: {
                          type: 'boolean'
                        }
                        starred_url: {
                          type: 'string'
                        }
                        subscriptions_url: {
                          type: 'string'
                        }
                        type: {
                          type: 'string'
                        }
                        url: {
                          type: 'string'
                        }
                      }
                      type: 'object'
                    }
                    private: {
                      type: 'boolean'
                    }
                    pulls_url: {
                      type: 'string'
                    }
                    pushed_at: {}
                    releases_url: {
                      type: 'string'
                    }
                    size: {
                      type: 'integer'
                    }
                    ssh_url: {
                      type: 'string'
                    }
                    stargazers_count: {
                      type: 'integer'
                    }
                    stargazers_url: {
                      type: 'string'
                    }
                    statuses_url: {
                      type: 'string'
                    }
                    subscribers_url: {
                      type: 'string'
                    }
                    subscription_url: {
                      type: 'string'
                    }
                    svn_url: {
                      type: 'string'
                    }
                    tags_url: {
                      type: 'string'
                    }
                    teams_url: {
                      type: 'string'
                    }
                    topics: {
                      type: 'array'
                    }
                    trees_url: {
                      type: 'string'
                    }
                    updated_at: {
                      type: 'string'
                    }
                    url: {
                      type: 'string'
                    }
                    visibility: {
                      type: 'string'
                    }
                    watchers: {
                      type: 'integer'
                    }
                    watchers_count: {
                      type: 'integer'
                    }
                  }
                  type: 'object'
                }
                sender: {
                  properties: {
                    avatar_url: {
                      type: 'string'
                    }
                    events_url: {
                      type: 'string'
                    }
                    followers_url: {
                      type: 'string'
                    }
                    following_url: {
                      type: 'string'
                    }
                    gists_url: {
                      type: 'string'
                    }
                    gravatar_id: {
                      type: 'string'
                    }
                    html_url: {
                      type: 'string'
                    }
                    id: {
                      type: 'integer'
                    }
                    login: {
                      type: 'string'
                    }
                    node_id: {
                      type: 'string'
                    }
                    organizations_url: {
                      type: 'string'
                    }
                    received_events_url: {
                      type: 'string'
                    }
                    repos_url: {
                      type: 'string'
                    }
                    site_admin: {
                      type: 'boolean'
                    }
                    starred_url: {
                      type: 'string'
                    }
                    subscriptions_url: {
                      type: 'string'
                    }
                    type: {
                      type: 'string'
                    }
                    url: {
                      type: 'string'
                    }
                  }
                  type: 'object'
                }
              }
              type: 'object'
            }
          }
        }
      }
      actions: {
        Condition: {
          actions: {
            Create_Issue: {
              runAfter: {
                Set_branch_protection_for_main_branch: [
                  'Succeeded'
                ]
              }
              type: 'Http'
              inputs: {
                authentication: {
                  password: ghpat
                  type: 'Basic'
                  username: username
                }
                body: {
                  body: 'Hi! \n\n @mortenp1337 has created an initial Readme-file and some guardrails for you to help comply with our security policies for code reviews. The following settings has been configured \n- Code reviews must be performed by at least one reviewer before merging code to the main branch.\n- Force pushes to the main branch are disabled\n- Conversations/comments must be resolved\n\nEnjoy!'
                  title: 'Welcome'
                }
                headers: {
                  Accept: 'application/vnd.github.v3+json'
                }
                method: 'POST'
                uri: '@{triggerBody()?[\'repository\']?[\'url\']}/issues'
              }
            }
            Create_readme: {
              runAfter: {}
              type: 'Http'
              inputs: {
                authentication: {
                  password: ghpat
                  type: 'Basic'
                  username: username
                }
                body: {
                  content: 'bXkgbmV3IGZpbGUgY29udGVudHM='
                  message: 'Automated creation of readme'
                }
                headers: {
                  Accept: 'application/vnd.github.v3+json'
                }
                method: 'PUT'
                uri: '@{triggerBody()?[\'repository\']?[\'url\']}/contents/readme.md'
              }
              runtimeConfiguration: {
                staticResult: {
                  staticResultOptions: 'Disabled'
                  name: 'HTTP0'
                }
              }
            }
            Set_branch_protection_for_main_branch: {
              runAfter: {
                Create_readme: [
                  'Succeeded'
                  'Failed'
                ]
              }
              type: 'Http'
              inputs: {
                authentication: {
                  password: ghpat
                  type: 'Basic'
                  username: username
                }
                body: {
                  allow_deletions: false
                  allow_force_pushes: false
                  enforce_admins: true
                  required_conversation_resolution: true
                  required_pull_request_reviews: {
                    dismiss_stale_reviews: true
                    dismissal_restrictions: {
                      users: [
                        'mortenp1337'
                      ]
                    }
                    require_code_owner_reviews: false
                    required_approving_review_count: 1
                  }
                  required_status_checks: null
                  restrictions: null
                }
                headers: {
                  Accept: 'application/vnd.github.v3+json'
                }
                method: 'PUT'
                uri: '@{triggerBody()?[\'repository\']?[\'url\']}/branches/main/protection'
              }
            }
          }
          runAfter: {}
          expression: {
            and: [
              {
                equals: [
                  '@triggerBody()?[\'action\']'
                  'created'
                ]
              }
              {
                equals: [
                  '@triggerBody()?[\'repository\']?[\'private\']'
                  false
                ]
              }
            ]
          }
          type: 'If'
        }
      }
      outputs: {
        
      }
    }
    
  }
}
