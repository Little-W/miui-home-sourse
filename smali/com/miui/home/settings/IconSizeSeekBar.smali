.class public Lcom/miui/home/settings/IconSizeSeekBar;
.super Lcom/miui/home/launcher/view/LabelSeekBar;
.source "IconSizeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/settings/IconSizeSeekBar$IconSizeChangeListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/home/settings/IconSizeSeekBar$IconSizeChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/view/LabelSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconSizeSeekBar;->setMax(I)V

    .line 20
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScale()F

    move-result p1

    const p2, 0x3f4ccccd    # 0.8f

    sub-float/2addr p1, p2

    const p2, 0x3b83126f    # 0.004f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/IconSizeSeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public getCurrentSetIconSizeValue()F
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3b83126f    # 0.004f

    mul-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, v1

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/miui/home/launcher/view/LabelSeekBar;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 30
    iget-object p1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mListener:Lcom/miui/home/settings/IconSizeSeekBar$IconSizeChangeListener;

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/miui/home/settings/IconSizeSeekBar;->getCurrentSetIconSizeValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/miui/home/settings/IconSizeSeekBar$IconSizeChangeListener;->onIconSizeChange(F)V

    :cond_0
    return-void
.end method

.method public setIconSizeChangeListener(Lcom/miui/home/settings/IconSizeSeekBar$IconSizeChangeListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/miui/home/settings/IconSizeSeekBar;->mListener:Lcom/miui/home/settings/IconSizeSeekBar$IconSizeChangeListener;

    return-void
.end method
