.class public Lcom/miui/home/launcher/LauncherWidgetContainerView;
.super Landroid/widget/FrameLayout;
.source "LauncherWidgetContainerView.java"

# interfaces
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# instance fields
.field private final DEBUG_ALIGNMENT:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 26
    iput-boolean p2, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->DEBUG_ALIGNMENT:Z

    .line 41
    new-instance p3, Landroid/view/GestureDetector;

    new-instance v0, Lcom/miui/home/launcher/LauncherWidgetContainerView$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView$1;-><init>(Lcom/miui/home/launcher/LauncherWidgetContainerView;)V

    invoke-direct {p3, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 54
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mPaddingTop:I

    .line 55
    iget p1, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mPaddingTop:I

    invoke-virtual {p0, p2, p1, p2, p2}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->setPadding(IIII)V

    return-void
.end method

.method private getTheme()Lcom/miui/home/launcher/maml/Theme;
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/maml/ThemeSupport;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/maml/ThemeSupport;

    invoke-interface {p0}, Lcom/miui/home/launcher/maml/ThemeSupport;->getTheme()Lcom/miui/home/launcher/maml/Theme;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 155
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 161
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 85
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 86
    instance-of v0, p2, Lcom/miui/home/launcher/widget/LauncherAppWidgetHostViewContainer;

    if-eqz v0, :cond_4

    .line 91
    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/home/launcher/ItemInfo;

    .line 92
    instance-of v0, p2, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean v0, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 97
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getTheme()Lcom/miui/home/launcher/maml/Theme;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 98
    invoke-interface {v2}, Lcom/miui/home/launcher/maml/Theme;->getTitleStyle()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v0, v1

    .line 102
    :cond_1
    iget v1, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget p2, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    invoke-static {v1, p2, v0}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide v0

    const/16 p2, 0x20

    shr-long v4, v0, p2

    long-to-int p2, v4

    long-to-int v0, v0

    if-eqz v2, :cond_2

    .line 108
    invoke-interface {v2}, Lcom/miui/home/launcher/maml/Theme;->getWidgetPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v2

    mul-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 123
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-lez p1, :cond_3

    if-lt p2, p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, p2

    :goto_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 128
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 129
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 130
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    .line 87
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parent must be LauncherAppWidgetHostViewContainer:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 178
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->requestLayout()V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 4

    .line 62
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 63
    instance-of v0, p1, Lcom/miui/home/launcher/interfaces/AutoAlignable;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMiuiWidgetPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 71
    invoke-direct {p0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getTheme()Lcom/miui/home/launcher/maml/Theme;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 73
    invoke-interface {p0}, Lcom/miui/home/launcher/maml/Theme;->getWidgetPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 77
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    .line 79
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method
