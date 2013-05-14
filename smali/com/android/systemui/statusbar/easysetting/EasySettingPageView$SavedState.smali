.class public Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "EasySettingPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySettingPageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 919
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 903
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 886
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;->currentScreen:I

    .line 904
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;->currentScreen:I

    .line 905
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 885
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 894
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 886
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;->currentScreen:I

    .line 895
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 912
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 913
    iget v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    return-void
.end method
