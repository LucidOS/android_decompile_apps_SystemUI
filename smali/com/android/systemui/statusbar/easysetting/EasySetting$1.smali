.class Lcom/android/systemui/statusbar/easysetting/EasySetting$1;
.super Landroid/telephony/PhoneStateListener;
.source "EasySetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$1;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 150
    .local v0, state:Z
    :goto_0
    return-void

    .line 148
    .end local v0           #state:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
