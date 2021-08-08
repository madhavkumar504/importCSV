<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Exports\UsersExport;
use App\Imports\UsersImport;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class UserController extends Controller
{
    public function index()
    {
        $users = User::all();
        return view('users', compact('users'));
    }

    /**
     * Export data to Excel/CSV
     *
     * @return void
     */
    public function export()
    {
        return Excel::download(new UsersExport, 'users.xls');
    }

    /**
     * Import User View
     *
     * @return void
     */
    // public function importUser()
    // {
    //     return view('import');
    // }

    /**
     * Import User data through sheet
     *
     * @return void
     */
    // public function import(Request $request)
    // {
    //     Excel::import(new UsersImport, $request->file('file'));
    //     return back()->with('success', 'Users imported successfully');
    // }
}
