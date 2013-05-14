.class public Lcom/android/systemui/statusbar/phone/navigationkeys/White180;
.super Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;
.source "White180.java"


# static fields
.field private static singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/White180;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/White180;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/White180;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/White180;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/White180;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;-><init>()V

    .line 16
    const v0, 0x7f0200cc

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHome:I

    .line 17
    const v0, 0x7f0200bd

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBack:I

    .line 18
    const v0, 0x7f0200e7

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecents:I

    .line 19
    const v0, 0x7f0200cd

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHomeInvisible:I

    .line 20
    const v0, 0x7f0200be

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBackInvisible:I

    .line 21
    const v0, 0x7f0200e8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecentsInvisible:I

    .line 22
    const v0, 0x7f0200dd

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenu:I

    .line 23
    const v0, 0x7f0200de

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenuInvisible:I

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/White180;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/White180;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/White180;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/White180;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/White180;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/White180;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/White180;

    .line 32
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/White180;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/White180;

    return-object v0
.end method
