.class public Lcom/android/systemui/statusbar/easysetting/EasySettingTab;
.super Ljava/lang/Object;
.source "EasySettingTab.java"


# instance fields
.field private click:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentView:Landroid/view/View;

.field mEasyLayout:Landroid/widget/LinearLayout;

.field private mEasySettingMode:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

.field private mEasySettingTabHost:Lcom/android/systemui/statusbar/easysetting/EasySettingTabHost;

.field mEasyText:Landroid/widget/TextView;

.field mQuickLayout:Landroid/widget/LinearLayout;

.field mQuickText:Landroid/widget/TextView;

.field private touch:Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "tab"

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mCurrentView:Landroid/view/View;

    .line 102
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingTab$1;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingTab;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->click:Landroid/view/View$OnClickListener;

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingTab$2;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingTab;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->touch:Landroid/view/View$OnTouchListener;

    .line 45
    const v0, 0x7f0c0087

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyLayout:Landroid/widget/LinearLayout;

    .line 46
    const v0, 0x7f0c0089

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickLayout:Landroid/widget/LinearLayout;

    .line 47
    const v0, 0x7f0c0088

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyText:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0c008a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickText:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->touch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->touch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->click:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->click:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mCurrentView:Landroid/view/View;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/EasySettingMain;)V
    .locals 0
    .parameter "context"
    .parameter "tab"
    .parameter "host"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 39
    iput-object p3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasySettingTabHost:Lcom/android/systemui/statusbar/easysetting/EasySettingTabHost;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasySettingMode:Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    .line 42
    return-void
.end method


# virtual methods
.method public changeNextTab(Landroid/view/View;)V
    .locals 6
    .parameter "nextView"

    .prologue
    const v5, 0x7f090081

    const v1, 0x7f02008f

    const v4, 0x7f090093

    const/16 v3, 0xa1

    const/16 v2, 0xff

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mCurrentView:Landroid/view/View;

    if-ne v0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyText:Landroid/widget/TextView;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f020130

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickText:Landroid/widget/TextView;

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mCurrentView:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasySettingTabHost:Lcom/android/systemui/statusbar/easysetting/EasySettingTabHost;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingTabHost;->easySettingTab()V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickText:Landroid/widget/TextView;

    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyText:Landroid/widget/TextView;

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mCurrentView:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasySettingTabHost:Lcom/android/systemui/statusbar/easysetting/EasySettingTabHost;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingTabHost;->quickSettingTab()V

    goto/16 :goto_0
.end method

.method public changeTextColor(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "color"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mCurrentView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickLayout:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    .local v0, res:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mQuickText:Landroid/widget/TextView;

    const v2, 0x7f090093

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingTab;->mEasyText:Landroid/widget/TextView;

    const v2, 0x7f090081

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method
