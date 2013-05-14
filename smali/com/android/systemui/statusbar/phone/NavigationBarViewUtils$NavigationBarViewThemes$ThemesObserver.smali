.class Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;
.super Ljava/lang/Object;
.source "NavigationBarViewUtils.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemesObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 379
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->getTheme()I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mTheme:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->access$002(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;I)I

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mOnThemesChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mOnThemesChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$ThemesObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->mTheme:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;->access$000(Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;->onThemesChanged(I)V

    .line 386
    :cond_0
    return-void
.end method
