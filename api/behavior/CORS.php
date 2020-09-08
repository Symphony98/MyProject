namespace app\api\behavior;


class CORS
{
    //对应tags.php的app_init  使用驼峰命名，不能修改方法名
    public function appInit(&$params)
    {
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Headers: token,Origin, X-Requested-With, Content-Type, Accept");
        header('Access-Control-Allow-Methods: POST,GET');
        if(request()->isOptions()){
            exit();
        }
    }
}