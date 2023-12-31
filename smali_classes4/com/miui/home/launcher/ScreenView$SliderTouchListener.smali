.class Lcom/miui/home/launcher/ScreenView$SliderTouchListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SliderTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ScreenView;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/ScreenView;)V
    .locals 0

    .line 2285
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/ScreenView;Lcom/miui/home/launcher/ScreenView$1;)V
    .locals 0

    .line 2285
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2288
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 2289
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2290
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v2, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-double v2, v2

    .line 2291
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 2293
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    const/4 p2, 0x2

    if-eq v3, p2, :cond_0

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 2299
    :cond_0
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreenInner(I)V

    .line 2300
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget v3, v2, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, p1

    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/2addr p0, p2

    int-to-float p0, p0

    sub-float/2addr v1, p0

    float-to-int p0, v1

    const/4 p1, 0x0

    invoke-virtual {v2, p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    goto :goto_0

    .line 2306
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    .line 2307
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    invoke-static {p0, p1}, Lcom/miui/home/launcher/ScreenView;->access$500(Lcom/miui/home/launcher/ScreenView;I)V

    goto :goto_0

    .line 2295
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 2296
    iget-object p0, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p0, p2, v4}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :goto_0
    return v5
.end method
