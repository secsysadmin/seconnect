# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(AdminReceiptsController, type: :routing) do
     describe 'routing' do
          it 'routes to #index' do
               expect(get: '/admin_receipts').to(route_to('admin_receipts#index'))
          end

          it 'routes to #new' do
               expect(get: '/admin_receipts/new').to(route_to('admin_receipts#new'))
          end

          it 'routes to #show' do
               expect(get: '/admin_receipts/1').to(route_to('admin_receipts#show', id: '1'))
          end

          it 'routes to #edit' do
               expect(get: '/admin_receipts/1/edit').to(route_to('admin_receipts#edit', id: '1'))
          end

          it 'routes to #create' do
               expect(post: '/admin_receipts').to(route_to('admin_receipts#create'))
          end

          it 'routes to #update via PUT' do
               expect(put: '/admin_receipts/1').to(route_to('admin_receipts#update', id: '1'))
          end

          it 'routes to #update via PATCH' do
               expect(patch: '/admin_receipts/1').to(route_to('admin_receipts#update', id: '1'))
          end

          it 'routes to #destroy' do
               expect(delete: '/admin_receipts/1').to(route_to('admin_receipts#destroy', id: '1'))
          end
     end
end
