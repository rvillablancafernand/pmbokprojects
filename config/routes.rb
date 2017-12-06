Rails.application.routes.draw do
	constraints subdomain: 'www' do
		# Devise students
		devise_for :students, path: '', controllers: { registrations: 'students/registrations', sessions: 'students/sessions' }

		# Home controller
		root to: 'students/home#index'
		resources :courses, module: 'students'
	end

	constraints subdomain: 'profesores' do
		# Devise admin users
		devise_for :professors, path: '', skip: :registrations, controllers: { invitations: 'professors/invitations' }
		devise_scope :professor do
			get 'edit', to: 'devise/registrations#edit', as: 'edit_professor_registration'
			patch '', to: 'devise/registrations#update', as: 'professor_registration'
			put '', to: 'devise/registrations#update'
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

		resources :courses, module: 'professors'
		resources :assignments, module: 'professors'
		resources :companies, module: 'professors'

		# Home controller
		root 'professors/home#dashboard'
	end

	# Redirect empty subdomain to www (to avoid duplicated sessions for same site)
	get ':any', to: redirect(subdomain: 'www', path: '/%{any}'), any: /.*/, constraints: { subdomain: false }

	# 404 Not found
	get '*unmatched_route', to: 'home#not_found'
end
