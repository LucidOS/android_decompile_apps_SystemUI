.class Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$1;
.super Landroid/telephony/PhoneStateListener;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler$1;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/DataEnabler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 71
    .local v0, state:Z
    :goto_0
    return-void

    .line 69
    .end local v0           #state:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
