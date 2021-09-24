<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}" />
        <title>Task</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
        <style>
            /*! normalize.css v8.0.1 | MIT License | github.com/necolas/normalize.css */html{line-height:1.15;-webkit-text-size-adjust:100%}body{margin:0}a{background-color:transparent}[hidden]{display:none}html{font-family:system-ui,-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,Noto Sans,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;line-height:1.5}*,:after,:before{box-sizing:border-box;border:0 solid #e2e8f0}a{color:inherit;text-decoration:inherit}svg,video{display:block;vertical-align:middle}video{max-width:100%;height:auto}.bg-white{--bg-opacity:1;background-color:#fff;background-color:rgba(255,255,255,var(--bg-opacity))}.bg-gray-100{--bg-opacity:1;background-color:#f7fafc;background-color:rgba(247,250,252,var(--bg-opacity))}.border-gray-200{--border-opacity:1;border-color:#edf2f7;border-color:rgba(237,242,247,var(--border-opacity))}.border-t{border-top-width:1px}.flex{display:flex}.grid{display:grid}.hidden{display:none}.items-center{align-items:center}.justify-center{justify-content:center}.font-semibold{font-weight:600}.h-5{height:1.25rem}.h-8{height:2rem}.h-16{height:4rem}.text-sm{font-size:.875rem}.text-lg{font-size:1.125rem}.leading-7{line-height:1.75rem}.mx-auto{margin-left:auto;margin-right:auto}.ml-1{margin-left:.25rem}.mt-2{margin-top:.5rem}.mr-2{margin-right:.5rem}.ml-2{margin-left:.5rem}.mt-4{margin-top:1rem}.ml-4{margin-left:1rem}.mt-8{margin-top:2rem}.ml-12{margin-left:3rem}.-mt-px{margin-top:-1px}.max-w-6xl{max-width:72rem}.min-h-screen{min-height:100vh}.overflow-hidden{overflow:hidden}.p-6{padding:1.5rem}.py-4{padding-top:1rem;padding-bottom:1rem}.px-6{padding-left:1.5rem;padding-right:1.5rem}.pt-8{padding-top:2rem}.fixed{position:fixed}.relative{position:relative}.top-0{top:0}.right-0{right:0}.shadow{box-shadow:0 1px 3px 0 rgba(0,0,0,.1),0 1px 2px 0 rgba(0,0,0,.06)}.text-center{text-align:center}.text-gray-200{--text-opacity:1;color:#edf2f7;color:rgba(237,242,247,var(--text-opacity))}.text-gray-300{--text-opacity:1;color:#e2e8f0;color:rgba(226,232,240,var(--text-opacity))}.text-gray-400{--text-opacity:1;color:#cbd5e0;color:rgba(203,213,224,var(--text-opacity))}.text-gray-500{--text-opacity:1;color:#a0aec0;color:rgba(160,174,192,var(--text-opacity))}.text-gray-600{--text-opacity:1;color:#718096;color:rgba(113,128,150,var(--text-opacity))}.text-gray-700{--text-opacity:1;color:#4a5568;color:rgba(74,85,104,var(--text-opacity))}.text-gray-900{--text-opacity:1;color:#1a202c;color:rgba(26,32,44,var(--text-opacity))}.underline{text-decoration:underline}.antialiased{-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.w-5{width:1.25rem}.w-8{width:2rem}.w-auto{width:auto}.grid-cols-1{grid-template-columns:repeat(1,minmax(0,1fr))}@media (min-width:640px){.sm\:rounded-lg{border-radius:.5rem}.sm\:block{display:block}.sm\:items-center{align-items:center}.sm\:justify-start{justify-content:flex-start}.sm\:justify-between{justify-content:space-between}.sm\:h-20{height:5rem}.sm\:ml-0{margin-left:0}.sm\:px-6{padding-left:1.5rem;padding-right:1.5rem}.sm\:pt-0{padding-top:0}.sm\:text-left{text-align:left}.sm\:text-right{text-align:right}}@media (min-width:768px){.md\:border-t-0{border-top-width:0}.md\:border-l{border-left-width:1px}.md\:grid-cols-2{grid-template-columns:repeat(2,minmax(0,1fr))}}@media (min-width:1024px){.lg\:px-8{padding-left:2rem;padding-right:2rem}}@media (prefers-color-scheme:dark){.dark\:bg-gray-800{--bg-opacity:1;background-color:#2d3748;background-color:rgba(45,55,72,var(--bg-opacity))}.dark\:bg-gray-900{--bg-opacity:1;background-color:#1a202c;background-color:rgba(26,32,44,var(--bg-opacity))}.dark\:border-gray-700{--border-opacity:1;border-color:#4a5568;border-color:rgba(74,85,104,var(--border-opacity))}.dark\:text-white{--text-opacity:1;color:#fff;color:rgba(255,255,255,var(--text-opacity))}.dark\:text-gray-400{--text-opacity:1;color:#cbd5e0;color:rgba(203,213,224,var(--text-opacity))}.dark\:text-gray-500{--tw-text-opacity:1;color:#6b7280;color:rgba(107,114,128,var(--tw-text-opacity))}}}
        </style>
        
        <style>
            body { font-family: 'Nunito', sans-serif; } .padding-left{padding-left: 2vw;} .padding{padding:0 10px;} .btn-submit{cursor:pointer; margin: 10px 0px 20px 0; padding: 10px; color: white; background: #ff0000ba;} .tdtable{width:200px; text-align:left;} .top{position:absolute; right:2vh; top:1vh;} form { box-shadow: 1px 2px 8px #00000078; max-width: 100%; margin: 10px auto; padding: 10px 20px; background: #f4f7f8; border-radius: 8px; } h1 { margin: 0 0 30px 0; text-align: center; } input[type="text"], input[type="password"], input[type="date"], input[type="datetime"], input[type="email"], input[type="number"], input[type="search"], input[type="tel"], input[type="time"], input[type="url"], textarea, select { background: rgba(255,255,255,0.1); border: none; font-size: 16px; height: auto; margin: 0; outline: 0; padding: 15px; width: 100%; background-color: #e8eeef; color: #8a97a0; box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset; margin-bottom: 30px; } input[type="radio"], input[type="checkbox"] { margin: 0 4px 8px 0; }
        </style>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    </head>
    <body class="antialiased">
        <div class="relative flex items-top justify-center bg-gray-100 dark:bg-gray-900 sm:items-center py-4 sm:pt-0">
            <div class="top">
                   Logged in as admin
            </div>
            <div class="max-w-6xl mx-auto sm:px-6 lg:px-8">
            <form>
                    <h2>Create Application</h2>
                    <div class="form-group">
                    <label>User:</label>
                    {{-- <input type="text" name="user_id" class="form-control" placeholder="User" required=""> --}}
                    <select id="user_id" name="user_id" class="form-control">
                    <option value="">--User--</option>
                        @foreach($users as $user)
                        <option data-brand="{{ $user->id }}" value="{{ $user->id }}">
                                {{ $user->name }}
                        </option>
                        @endforeach
                    </select>
                    </div>
                    <div class="form-group">
                    <label>Charity:</label>
                    {{-- <input type="text" name="charity_id" class="form-control" placeholder="charity" required=""> --}}
                    <select id="charity_id" name="charity_id" class="form-control">
                    <option value="">--Charity--</option>
                        @foreach($charities as $charity)
                        {{-- uncomment below to restrict unapproved charities --}}
                        {{-- @if ($charity->is_approved == 1) --}}
                        <option data-brand="{{ $charity->id }}" value="{{ $charity->id }}">
                                {{ $charity->charity_name }}
                        </option>
                        {{-- @endif  --}}
                        @endforeach
                    </select>
                    </div>
                    <div class="form-group">
                    <strong>Stage:</strong>
                    {{-- <input type="text" name="stage_id" class="form-control" placeholder="stage" required=""> --}}
                    <select id="stage_id" name="stage_id" class="form-control">
                    <option value="">--Stage--</option>
                        @foreach($stages as $stage)
                        <option data-brand="{{ $stage->id }}" value="{{ $stage->id }}">
                                {{ $stage->stage_name }}
                        </option>
                        @endforeach
                    </select>
                    </div>
                    <div class="form-group">
                    <button class="btn btn-success btn-submit">Submit</button>
                    </div>
                </form>
                <div class="flex justify-center pt-8 sm:justify-start sm:pt-0 padding">
                  Applications
                </div>
                <table class="table table-bordered padding" id="table" style="margin-top:1rem; border:0 !important;">
                <thead>
                <tr>
                  <th class="tdtable" data-field="application_id" data-checkbox="false">ID</th>
                  <th class="tdtable" data-field="user_id" data-checkbox="false">User</th>
                  <th class="tdtable" data-field="charity_id" data-checkbox="false">Charity</th>
                  <th class="tdtable padding-left" data-field="stage_id" data-checkbox="false">Stage</th>
                </tr>
                </thead>
                @foreach($applications as $app)
                        <tr>
                           <td>{{ $app->id }}</td>
                           <td>{{ getUsername($app->user_id) }}</td>
                           <td>{{ getCharity($app->charity_id) }}</td>
                           <td class="padding-left">{{ getStage($app->stage_id) }}</td>
                        </tr>
                @endforeach
                </table>
                    
            </div>
        </div>
        <script type="text/javascript">
            $.ajaxSetup({
                headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $(".btn-submit").click(function(e) {
                e.preventDefault();
                var user_id = $("select[name=user_id]").val();
                var charity_id = $("select[name=charity_id]").val();
                var stage_id = $("select[name=stage_id]").val();
                $.ajax({
                type: 'POST',
                url: '{{ route('application_create') }}',
                data: {
                    user_id: user_id,
                    charity_id: charity_id,
                    stage_id: stage_id
                },
                success: function(data) {
                    location.reload();
                }
                });
            });
        </script>
    </body>
</html>
