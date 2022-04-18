<template>
  <div>
    <el-form
      class="detail-form-content"
      ref="ruleForm"
      :model="ruleForm"
      :rules="rules"
      label-width="80px"
    >
      <el-row>
                        <el-col :span="12">
        <el-form-item  v-if="type!='info'"  label="招聘岗位" prop="zhaopingangwei">
          <el-input v-model="ruleForm.zhaopingangwei"
              placeholder="招聘岗位" clearable></el-input>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.zhaopingangwei" label="招聘岗位" prop="zhaopingangwei">
              <el-input v-model="ruleForm.zhaopingangwei"
                placeholder="招聘岗位" readonly></el-input>
          </el-form-item>
        </div>
      </el-col>
                        <el-col :span="12">
          <el-form-item  label="用户名">
              <el-input v-model="ruleForm.yonghuming"
                placeholder="用户名" readonly></el-input>
          </el-form-item>
      </el-col>
                        <el-col :span="12">
          <el-form-item  label="姓名">
              <el-input v-model="ruleForm.xingming"
                placeholder="姓名" readonly></el-input>
          </el-form-item>
      </el-col>
                        <el-col :span="12">
          <el-form-item label="电话">
              <el-input v-model="ruleForm.dianhua"
                placeholder="电话" readonly></el-input>
          </el-form-item>
      </el-col>

<el-col :span="12">
    <el-form-item  v-if="type!='info'"  label="学历" prop="xueli">
    <el-select v-model="ruleForm.xueli" placeholder="请选学历">
<el-option label="专科" value="专科"></el-option>
<el-option label="本科" value="本科"></el-option>
</el-select>
</el-form-item>
<div v-else>
    <el-form-item v-if="ruleForm.xueli" label="学历" prop="xueli">
        <el-select v-model="ruleForm.xueli" placeholder="请选学历" readonly>
            <el-option label="专科" value="专科"></el-option>
            <el-option label="本科" value="本科"></el-option>
        </el-select>
    </el-form-item>
</div>
</el-col>

<el-col :span="12">
    <el-form-item  v-if="type!='info'"  label="专业" prop="zhuanye">
    <el-input v-model="ruleForm.zhuanye"
placeholder="专业" clearable></el-input>
</el-form-item>
<div v-else>
    <el-form-item v-if="ruleForm.zhuanye" label="专业" prop="zhuanye">
        <el-input v-model="ruleForm.zhuanye"
                  placeholder="专业" readonly></el-input>
    </el-form-item>
</div>
</el-col>

<el-col :span="12">
    <el-form-item  v-if="type!='info'"  label="学校" prop="xuexiao">
    <el-input v-model="ruleForm.xuexiao"
placeholder="学校" clearable></el-input>
</el-form-item>
<div v-else>
    <el-form-item v-if="ruleForm.xuexiao" label="学校" prop="xuexiao">
        <el-input v-model="ruleForm.xuexiao"
                  placeholder="学校" readonly></el-input>
    </el-form-item>
</div>
</el-col>

<el-col :span="12">
    <el-form-item  v-if="type!='info'"  label="家庭住址" prop="address">
    <el-input v-model="ruleForm.address"
placeholder="家庭住址" clearable></el-input>
</el-form-item>
<div v-else>
    <el-form-item v-if="ruleForm.address" label="家庭住址" prop="address">
        <el-input v-model="ruleForm.address"
                  placeholder="家庭住址" readonly></el-input>
    </el-form-item>
</div>
</el-col>

<el-col :span="12">
    <el-form-item  v-if="type!='info'"  label="是否应届生" prop="yingjiesheng">
    <el-switch v-model="ruleForm.yingjiesheng"></el-switch>
</el-form-item>
<div v-else>
    <el-form-item v-if="ruleForm.yingjiesheng" label="是否应届生" prop="yingjiesheng">
        <el-switch v-model="ruleForm.yingjiesheng" readonly></el-switch>
    </el-form-item>
</div>
</el-col>
                        <el-col :span="24">
        <el-form-item v-if="type!='info'" label="简历" prop="jianli">
          <file-upload
          tip="点击上传简历"
          action="file/upload"
          :limit="1"
          :multiple="true"
          :fileUrls="ruleForm.jianli?ruleForm.jianli:''"
          @change="jianliUploadChange"
          ></file-upload>
        </el-form-item>
        <div v-else>
          <el-form-item v-if="ruleForm.jianli" label="简历" prop="jianli">
            <el-button type="text" size="small" @click="download(ruleForm.jianli)">下载</el-button>
          </el-form-item>
        </div>
      </el-col>
                                                      </el-row>
                                                                                                                                                                                                                                                                                                                                      <el-form-item>
                <el-button v-if="type!='info'" type="primary" @click="onSubmit">提交</el-button>
        <el-button v-if="type!='info'" @click="back()">取消</el-button>
        <el-button v-if="type=='info'" @click="back()">返回</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>
<script>
// 数字，邮件，手机，url，身份证校验
import { isNumber,isIntNumer,isEmail,isMobile,isURL,checkIdCard } from "@/utils/validate";
export default {
  data() {
    var validateIdCard = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!checkIdCard(value)) {
        callback(new Error("请输入正确的身份证号码"));
      } else {
        callback();
      }
    };
    var validateUrl = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isURL(value)) {
        callback(new Error("请输入正确的URL地址"));
      } else {
        callback();
      }
    };
    var validateEmail = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isEmail(value)) {
        callback(new Error("请输入正确的邮箱地址"));
      } else {
        callback();
      }
    };
    var validateNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isNumber(value)) {
        callback(new Error("请输入数字"));
      } else {
        callback();
      }
    };
    var validateIntNumber = (rule, value, callback) => {
      if(!value){
        callback();
      } else if (!isIntNumer(value)) {
        callback(new Error("请输入整数"));
      } else {
        callback();
      }
    };
    return {
      id: '',
      type: '',
      ruleForm: {
                        // qiyebianhao: '',
                        //         qiyemingcheng: '',
                        //         fuzeren: '',
                        //         lianxidianhua: '',
                                zhaopingangwei: '',
                                yonghuming: '',
                                xingming: '',
                                dianhua: '',
                                xueli: '',
    zhuanye:'',
    xuexiao: '',
    address: '',
    yingjiesheng: true,
                                jianli: '',
                                sfsh: '',
                                shhf: '',
                      },
                                                                                                                                                                      rules: {
                  // qiyebianhao: [
                  //                                                                             ],
                  // qiyemingcheng: [
                  //                                                                             ],
                  // fuzeren: [
                  //                                                                             ],
                  // lianxidianhua: [
                  //                                                                             ],
                  zhaopingangwei: [
                                                                                              ],
                  yonghuming: [
                                                                                              ],
                  xingming: [
                                                                                              ],
                  dianhua: [
                                                                                              ],
                    xueli: [],
    zhuanye: [],
    xuexiao: [],
    address:[],
    yingjiesheng:[],
                  jianli: [
                                                                                              ],
                  sfsh: [
                                                                                              ],
                  shhf: [
                                                                                              ],
              }
    };
  },
  props: ["parent"],
  computed: {
                                                                                                                                          },
  methods: {
    // 下载
    download(file){
      window.open(`${file}`)
    },
    // 初始化
    init(id,type) {
      if (id) {
        this.id = id;
        this.type = type;
      }
      if(this.type=='info'||this.type=='else'){
        this.info(id);
      }else if(this.type=='cross'){
        var obj = this.$storage.getObj('crossObj');
        for (var o in obj){
                    if(o=='xueli'){
            this.ruleForm.xueli = obj[o];
            continue;
          }
                    if(o=='zhuanye'){
            this.ruleForm.zhuanye = obj[o];
            continue;
          }
                    if(o=='xuexiao'){
            this.ruleForm.xuexiao = obj[o];
            continue;
          }
                    if(o=='address'){
            this.ruleForm.address = obj[o];
            continue;
          }

    if(o=='yingjiesheng'){
        if (obj[0] == '0') {
    this.ruleForm.yingjiesheng = false;
} else {
    this.ruleForm.yingjiesheng = true;
}

    continue;
}
                    if(o=='zhaopingangwei'){
            this.ruleForm.zhaopingangwei = obj[o];
            continue;
          }
                    if(o=='yonghuming'){
            this.ruleForm.yonghuming = obj[o];
            continue;
          }
                    if(o=='xingming'){
            this.ruleForm.xingming = obj[o];
            continue;
          }
                    if(o=='dianhua'){
            this.ruleForm.dianhua = obj[o];
            continue;
          }
                    if(o=='jianli'){
            this.ruleForm.jianli = obj[o];
            continue;
          }
                    if(o=='sfsh'){
            this.ruleForm.sfsh = obj[o];
            continue;
          }
                    if(o=='shhf'){
            this.ruleForm.shhf = obj[o];
            continue;
          }
                  }
                                                                                                                                                                                              }
            // 获取用户信息
      this.$http({
        url: `${this.$storage.get('sessionTable')}/session`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          var json = data.data;
                                                                                                                                                  this.ruleForm.yonghuming = json.yonghuming
                                                this.ruleForm.xingming = json.xingming
                                                this.ruleForm.dianhua = json.dianhua
                                                                                                } else {
          this.$message.error(data.msg);
        }
      });
                                                                                                                                                                                                                                    },
                                                                                                // 多级联动参数
                                                                                                                          info(id) {
      this.$http({
        url: `yingpinxinxi/info/${id}`,
        method: "get"
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.ruleForm = data.data;
        } else {
          this.$message.error(data.msg);
        }
      });
    },
        // 提交
    onSubmit() {
                                                                                                                                                                                                                                                                                          this.$refs["ruleForm"].validate(valid => {
        if (valid) {
            if (this.ruleForm.yingjiesheng == true) {
                this.ruleForm.yingjiesheng = '1';
} else {
    this.ruleForm.yingjiesheng = '0';
}
          this.$http({
            url: `yingpinxinxi/${!this.ruleForm.id ? "save" : "update"}`,
            method: "post",
            data: this.ruleForm
          }).then(({ data }) => {
            if (data && data.code === 0) {
              this.$message({
                message: "操作成功",
                type: "success",
                duration: 1500,
                onClose: () => {
                  this.parent.showFlag = true;
                  this.parent.addOrUpdateFlag = false;
                  this.parent.yingpinxinxiCrossAddOrUpdateFlag = false;
                  this.parent.search();
                }
              });
            } else {
              this.$message.error(data.msg);
            }
          });
        }
      });
    },
    // 获取uuid
    getUUID () {
      return new Date().getTime();
    },
    // 返回
    back() {
      this.parent.showFlag = true;
      this.parent.addOrUpdateFlag = false;
      this.parent.yingpinxinxiCrossAddOrUpdateFlag = false;
    },
                                                                                                                        jianliUploadChange(fileUrls) {
                this.ruleForm.jianli = fileUrls;
            },
                                      }
};
</script>
<style lang="scss" scoped>
.editor{
  height: 500px;
}
</style>
