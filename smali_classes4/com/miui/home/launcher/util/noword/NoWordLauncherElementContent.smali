.class public interface abstract Lcom/miui/home/launcher/util/noword/NoWordLauncherElementContent;
.super Ljava/lang/Object;
.source "NoWordLauncherElementContent.java"


# virtual methods
.method public canDrawForegroundTitle()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public iconContainerId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public iconView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isNoWordModel()Z
    .locals 0

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p0

    return p0
.end method

.method public titleViewContainerId()I
    .locals 0

    const p0, 0x7f0a01b6

    return p0
.end method

.method public titleViewId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public viewChangeAlphaWhenEditModeChange()Landroid/view/View;
    .locals 0

    .line 38
    invoke-interface {p0}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementContent;->iconView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
