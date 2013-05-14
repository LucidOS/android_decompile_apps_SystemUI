.class Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$1;
.super Ljava/lang/Object;
.source "CarrierPickerMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->setLayout(Z)V
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
    .line 134
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 136
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->dismiss()V

    .line 145
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v2, "CarrierPickerMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoogleNow fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->dismiss()V

    goto :goto_0

    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/CarrierPickerMenu;->dismiss()V

    throw v2
.end method
