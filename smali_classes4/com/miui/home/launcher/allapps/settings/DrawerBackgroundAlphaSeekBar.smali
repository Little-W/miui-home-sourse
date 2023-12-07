.class public Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;
.super Lcom/miui/home/launcher/view/LabelSeekBar;
.source "DrawerBackgroundAlphaSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar$DrawerBackgroundAlphaChangeListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar$DrawerBackgroundAlphaChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/view/LabelSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xff

    .line 14
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;->setMax(I)V

    .line 15
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getBackgroundAlpha()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public getCurrentSetAlphaValue()I
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;->getProgress()I

    move-result p0

    rsub-int p0, p0, 0xff

    return p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/view/LabelSeekBar;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 29
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;->mListener:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar$DrawerBackgroundAlphaChangeListener;

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;->getCurrentSetAlphaValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar$DrawerBackgroundAlphaChangeListener;->onDrawerBackgroundAlphaChange(I)V

    :cond_0
    return-void
.end method

.method public setDrawerBackgroundAlphaChangeListener(Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar$DrawerBackgroundAlphaChangeListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar;->mListener:Lcom/miui/home/launcher/allapps/settings/DrawerBackgroundAlphaSeekBar$DrawerBackgroundAlphaChangeListener;

    return-void
.end method
