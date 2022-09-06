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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 29
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogRootView;->mCallback:Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1}, Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public setConfigurationChangedCallback(Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lmiui/home/lib/dialog/widget/DialogRootView;->mCallback:Lmiui/home/lib/dialog/widget/DialogRootView$ConfigurationChangedCallback;

    return-void
.end method
