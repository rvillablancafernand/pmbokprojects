Rails.application.routes.draw do
	concern :paginatable do
		get '(page/:page)', action: :index, on: :collection, as: ''
		get '(page/:page)', action: :show, on: :member, as: ''
	end

	constraints subdomain: 'www' do
		# Devise students
		devise_for :students, module: 'students/devise', path: '', controllers: { registrations: 'students/devise/registrations' }

		# Home controller
		root to: 'students/home#index'
		resources :courses, module: 'students'
	end

	constraints subdomain: 'profesores' do
		# Devise admin users
		devise_for :professors, module: 'professors/devise', path: '', skip: :registrations
		devise_scope :professor do
			get 'edit', to: 'professors/devise/registrations#edit', as: 'edit_professor_registration'
			patch '', to: 'professors/devise/registrations#update', as: 'professor_registration'
			put '', to: 'professors/devise/registrations#update'
		end
		resources :professors, module: 'professors', only: [:show, :index, :destroy], concerns: :paginatable
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
			get 'accept_student', to: 'courses#accept_student'
		end
		resources :assignments, module: 'professors' do
			resources :students, only: :index
		end
		resources :companies, module: 'professors'

		# Home controller
		root 'professors/home#dashboard'
	end

	# Redirect empty subdomain to www (to avoid duplicated sessions for same site)
	get ':any', to: redirect(subdomain: 'www', path: '/%{any}'), any: /.*/, constraints: { subdomain: false }

	# 404 Not found
	get '*unmatched_route', to: 'students/home#not_found'
end
