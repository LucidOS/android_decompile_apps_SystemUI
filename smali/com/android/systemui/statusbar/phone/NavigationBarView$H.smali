.class Lcom/android/systemui/statusbar/phone/NavigationBarView$H;
.super Landroid/os/Handler;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "m"

    .prologue
    const/4 v10, 0x1

    .line 127
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, how:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWidth()I

    move-result v5

    .line 131
    .local v5, w:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHeight()I

    move-result v0

    .line 132
    .local v0, h:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 133
    .local v4, vw:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 135
    .local v3, vh:I
    if-ne v0, v3, :cond_1

    if-eq v5, v4, :cond_0

    .line 136
    :cond_1
    const-string v6, "PhoneStatusBar/NavigationBarView"

    const-string v7, "*** Invalid layout in navigation bar (%s this=%dx%d cur=%dx%d)"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->requestLayout()V

    goto :goto_0

    .line 146
    .end local v0           #h:I
    .end local v1           #how:Ljava/lang/String;
    .end local v3           #vh:I
    .end local v4           #vw:I
    .end local v5           #w:I
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, how2:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 148
    const-string v6, "disabled"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v10, :cond_2

    .line 149
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->disable()V

    goto/16 :goto_0

    .line 151
    :cond_2
    const-string v6, "enabled"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v10, :cond_3

    .line 152
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->enable()V

    goto/16 :goto_0

    .line 155
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonOrientationListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;->disable()V

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x21ee
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
