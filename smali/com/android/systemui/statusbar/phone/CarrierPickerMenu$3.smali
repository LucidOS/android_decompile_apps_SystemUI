.class Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$3;
.super Ljava/lang/Object;
.source "CarrierPickerMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    .line 190
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "com.uplus.onphone"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "com.uplus.onphone.page.LoadingPage"

    aput-object v10, v0, v9

    .line 191
    .local v0, HDTV:[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v2, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "lg.uplusbox"

    aput-object v10, v2, v9

    const/4 v9, 0x1

    const-string v10, "lg.uplusbox.TitleActivity"

    aput-object v10, v2, v9

    .line 192
    .local v2, UBOX:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 193
    .local v4, appInfo_lgu:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 202
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 203
    .local v3, am:Landroid/app/ActivityManager;
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 205
    .local v1, Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 206
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v6, intent:Landroid/content/Intent;
    const/high16 v9, 0x1020

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    const/4 v9, 0x0

    aget-object v9, v4, v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 195
    .end local v1           #Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3           #am:Landroid/app/ActivityManager;
    :pswitch_0
    move-object v4, v0

    .line 196
    goto :goto_0

    .line 198
    :pswitch_1
    move-object v4, v2

    goto :goto_0

    .line 211
    .restart local v1       #Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v3       #am:Landroid/app/ActivityManager;
    .restart local v6       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    .line 212
    .local v5, e:Landroid/content/ActivityNotFoundException;
    const-string v9, "CarrierPickerMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0900db

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 216
    .end local v5           #e:Landroid/content/ActivityNotFoundException;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v9, 0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 217
    .local v7, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 218
    .local v8, topactivityname:Ljava/lang/String;
    const-string v9, "CarrierPickerMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "topActivityName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 220
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 221
    .restart local v6       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1020

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    const/4 v9, 0x0

    aget-object v9, v4, v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->dismiss()V

    goto :goto_1

    .line 225
    :catch_1
    move-exception v5

    .line 226
    .restart local v5       #e:Landroid/content/ActivityNotFoundException;
    :try_start_2
    const-string v9, "CarrierPickerMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0900db

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->dismiss()V

    goto/16 :goto_1

    .end local v5           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$3;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->dismiss()V

    throw v9

    .line 193
    :pswitch_data_0
    .packed-switch 0x7f0c0044
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
