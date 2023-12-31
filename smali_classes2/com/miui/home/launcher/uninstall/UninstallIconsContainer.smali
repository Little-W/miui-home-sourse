.class public Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;
.super Lcom/miui/home/launcher/ScreenView;
.source "UninstallIconsContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 18
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;->setScreenLayoutMode(I)V

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/uninstall/UninstallIconsContainer;->setEnableReverseDrawingMode(Z)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result p1

    .line 30
    div-int/lit8 v0, p1, 0x4

    add-int/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 31
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onMeasure(II)V

    return-void
.end method
