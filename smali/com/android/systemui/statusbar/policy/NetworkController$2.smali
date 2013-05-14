.class Lcom/android/systemui/statusbar/policy/NetworkController$2;
.super Landroid/os/Handler;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 659
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 661
    .local v0, ar:Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 676
    :goto_0
    return-void

    .line 663
    :sswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->lastupdateDataNetType:I

    if-nez v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 665
    const-string v1, "@@@"

    const-string v2, "data type unknown setting...."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    const-string v1, "@@@"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_CHECK_DATA_NET_TYPE_ICON -- mDataNetType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/NetworkController;->lastupdateDataState:I

    iput v2, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    .line 669
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->forceUpdateIconView()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    goto :goto_0

    .line 672
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->pendingDispaySignalStrength()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1000(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 673
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->forceUpdateIconView()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    goto :goto_0

    .line 661
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
