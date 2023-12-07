.class public Lmiui/home/lib/dialog/widget/DialogRootView;
.super Landroid/widget/FrameLayout;
.source "DialogRootView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;

.field private mNotifyConfigChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lmiui/home/lib/dialog/widget/DialogRootView;->mNotifyConfigChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lmiui/home/lib/dialog/widget/DialogRootView;->mNotifyConfigChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lmiui/home/lib/dialog/widget/DialogRootView;->mNotifyConfigChanged:Z

    return-void
.end method

.method static synthetic access$000(Lmiui/home/lib/dialog/widget/DialogRootView;)Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;
    .locals 0

    .line 11
    iget-object p0, p0, Lmiui/home/lib/dialog/widget/DialogRootView;->mCallback:Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;

    return-object p0
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lmiui/home/lib/dialog/widget/DialogRootView;->mNotifyConfigChanged:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 39
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 40
    iget-boolean p1, p0, Lmiui/home/lib/dialog/widget/DialogRootView;->mNotifyConfigChanged:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lmiui/home/lib/dialog/widget/DialogRootView;->mNotifyConfigChanged:Z

    .line 42
    invoke-virtual {p0}, Lmiui/home/lib/dialog/widget/DialogRootView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 43
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 44
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 45
    iget-object v4, p0, Lmiui/home/lib/dialog/widget/DialogRootView;->mCallback:Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;

    if-eqz v4, :cond_0

    .line 46
    invoke-virtual {p0}, Lmiui/home/lib/dialog/widget/DialogRootView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;IIII)V

    .line 48
    :cond_0
    new-instance p1, Lmiui/home/lib/dialog/widget/DialogRootView$1;

    move-object v0, p1

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lmiui/home/lib/dialog/widget/DialogRootView$1;-><init>(Lmiui/home/lib/dialog/widget/DialogRootView;IIIIII)V

    invoke-virtual {p0, p1}, Lmiui/home/lib/dialog/widget/DialogRootView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setConfigurationChangedCallback(Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lmiui/home/lib/dialog/widget/DialogRootView;->mCallback:Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;

    return-void
.end method
