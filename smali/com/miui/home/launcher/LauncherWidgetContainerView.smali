.class public Lcom/miui/home/launcher/LauncherWidgetContainerView;
.super Landroid/widget/FrameLayout;
.source "LauncherWidgetContainerView.java"


# instance fields
.field private final DEBUG_ALIGNMENT:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->DEBUG_ALIGNMENT:Z

    .line 36
    new-instance p3, Landroid/view/GestureDetector;

    new-instance v0, Lcom/miui/home/launcher/LauncherWidgetContainerView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView$1;-><init>(Lcom/miui/home/launcher/LauncherWidgetContainerView;)V

    invoke-direct {p3, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 49
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mPaddingTop:I

    .line 50
    iget p1, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mPaddingTop:I

    invoke-virtual {p0, p2, p1, p2, p2}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 133
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 139
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 143
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 80
    instance-of v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v1, :cond_0

    .line 81
    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean v1, v1, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v1, :cond_0

    const/4 p2, 0x1

    .line 86
    :cond_0
    iget v1, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v1, v0, p2}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide v0

    const/16 p2, 0x20

    shr-long v2, v0, p2

    long-to-int p2, v2

    long-to-int v0, v0

    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-lez p1, :cond_1

    if-lt p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    const/high16 p2, 0x40000000    # 2.0f

    .line 106
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 107
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 108
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 75
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parent must be LauncherAppWidgetHostViewContainer:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 5

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 58
    instance-of v0, p1, Lcom/miui/home/launcher/interfaces/AutoAlignable;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMiuiWidgetPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method
