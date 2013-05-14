.class public abstract Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesStateHelper;
.super Ljava/lang/Object;
.source "NavigationBarViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ThemesStateHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesStateHelper;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 477
    return-void
.end method


# virtual methods
.method protected isButtonValied(I)Z
    .locals 1
    .parameter "button"

    .prologue
    .line 480
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 481
    const/4 v0, 0x1

    .line 483
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
