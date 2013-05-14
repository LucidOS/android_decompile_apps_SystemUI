.class Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$2;
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
    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 168
    :goto_0
    if-eqz v2, :cond_0

    .line 169
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 173
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->dismiss()V

    .line 184
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 155
    :pswitch_0
    const-string v2, "com.ktmusic.geniemusic"

    .line 156
    goto :goto_0

    .line 158
    :pswitch_1
    const-string v2, "com.kt.otv"

    .line 159
    goto :goto_0

    .line 161
    :pswitch_2
    const-string v2, "kt.navi"

    .line 162
    goto :goto_0

    .line 164
    :pswitch_3
    const-string v2, "com.kt.olleh.storefront"

    goto :goto_0

    .line 174
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_1
    const-string v3, "CarrierPickerMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900db

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->dismiss()V

    goto :goto_1

    .line 177
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 178
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_2
    const-string v3, "CarrierPickerMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900db

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->dismiss()V

    goto :goto_1

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$2;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->dismiss()V

    throw v3

    .line 153
    :pswitch_data_0
    .packed-switch 0x7f0c0047
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
