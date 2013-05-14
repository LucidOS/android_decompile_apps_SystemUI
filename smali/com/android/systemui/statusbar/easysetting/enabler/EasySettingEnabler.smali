.class public abstract Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;
.super Ljava/lang/Object;
.source "EasySettingEnabler.java"


# instance fields
.field TAG:Ljava/lang/String;

.field mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "EasySettingEnabler"

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->mButtonList:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public addButton(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I
    .locals 1
    .parameter "button"

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->hasButtons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public boolToState(Z)I
    .locals 1
    .parameter "b"

    .prologue
    .line 129
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buttonSetOn(Z)V
    .locals 3
    .parameter "isOn"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->hasButtons()Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    :cond_0
    return-void

    .line 63
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 65
    .local v0, button:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    goto :goto_0
.end method

.method public buttonSetState(ILjava/lang/CharSequence;)V
    .locals 3
    .parameter "state"
    .parameter "title"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->hasButtons()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    :cond_0
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 88
    .local v0, button:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setState(I)V

    .line 89
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public completeProgress()V
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->hasButtons()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    :cond_0
    return-void

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 112
    .local v0, button:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->completeProgress()V

    goto :goto_0
.end method

.method public hasButtons()Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->mButtonList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->TAG:Ljava/lang/String;

    const-string v1, "buttonSetOn is null "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setButtonEnabled(Z)V
    .locals 3
    .parameter "isOn"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->hasButtons()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 100
    .local v0, button:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setEnabled(Z)V

    goto :goto_0
.end method

.method public showProgress()V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->hasButtons()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    :cond_0
    return-void

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/EasySettingEnabler;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    .line 124
    .local v0, button:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->showProgress()V

    goto :goto_0
.end method
