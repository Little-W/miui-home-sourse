.class public interface abstract Lcom/mi/globallauncher/BranchAllAppsIndicator$IBranchAllAppsIndicatorCallBack;
.super Ljava/lang/Object;
.source "BranchAllAppsIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/BranchAllAppsIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IBranchAllAppsIndicatorCallBack"
.end annotation


# virtual methods
.method public abstract getAllAppsIndicator()Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;
.end method

.method public abstract getBranchScreenIndicator()Landroid/view/View;
.end method

.method public abstract getHandleContainer()Landroid/widget/LinearLayout;
.end method

.method public abstract getHandleMessage()Landroid/widget/TextView;
.end method

.method public abstract requestIndicatorLayout()V
.end method
