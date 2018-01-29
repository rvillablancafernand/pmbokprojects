Rails.application.routes.draw do
	constraints subdomain: 'profesores' do
		# Devise admin users
		devise_for :professors, module: 'professors/devise', path: '', skip: :registrations
		devise_scope :professor do
			get 'edit', to: 'professors/devise/registrations#edit', as: 'edit_professor_registration'
			patch '', to: 'professors/devise/registrations#update', as: 'professor_registration'
			put '', to: 'professors/devise/registrations#update'
		end

		resources :professors, module: 'professors', only: [:show, :index, :destroy]
		resources :students, module: 'professors', only: [:show, :index, :destroy]

		resources :pmboks, module: 'professors' do
			resources :process_groups, only: [:edit, :update, :destroy] do
				resources :process_objects, only: [:edit, :update, :destroy]
			end
		end
		resources :process_group_types, module: 'professors', except: [:show]
		resources :knowledge_area_types, module: 'professors', except: [:show]
		resources :input_and_output_types, module: 'professors', except: [:show]
		resources :tool_and_technique_types, module: 'professors', except: [:show]

		resources :courses, module: 'professors' do
			resources :students, except: [:index, :show, :new, :create, :edit, :update, :destroy] do
				member do
					post 'accept'
					post 'reject'
				end
			end
			resources :assignments, except: [:index] do
				resources :students, only: [:edit, :update] do
					member do
						get 'show_assignment'
					end
				end
			end
		end
		resources :attachments, module: 'professors', only: [:update]
		resources :companies, module: 'professors'

		# Home controller
		root 'professors/home#dashboard'
	end

	constraints subdomain: 'www' do
		# Devise students
		devise_for :students, module: 'students/devise', path: '', controllers: { registrations: 'students/devise/registrations' }

		resources :assignments_students, module: 'students', only: :show do
			resources :inputs, only: :update
			resources :tools_and_techniques, only: :update
			resources :outputs, only: :update
		end

		resources :courses, module: 'students' do
			resources :assignments, only: [:show] do
				member do
					post 'done'
				end
			end
			member do
				post 'register'
			end
			collection do
				get 'my_courses', as: 'my'
			end
		end

		# Home controller
		root to: 'students/home#index'
	end

	# Redirect empty subdomain to www (to avoid duplicated sessions for same site)
	get ':any', to: redirect(subdomain: 'www', path: '/%{any}'), any: /.*/, constraints: { subdomain: false }

	# 404 Not found
	get '*unmatched_route', to: 'students/home#not_found'
end
