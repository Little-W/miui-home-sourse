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

    .line 2251
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/ScreenView;Lcom/miui/home/launcher/ScreenView$1;)V
    .locals 0

    .line 2251
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 2254
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 2255
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2256
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v2, v1

    mul-float/2addr v2, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    float-to-double v2, v2

    .line 2257
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 2259
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2265
    :pswitch_0
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p2, v2}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreenInner(I)V

    .line 2266
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-static {p2}, Lcom/miui/home/launcher/ScreenView;->access$500(Lcom/miui/home/launcher/ScreenView;)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    div-float/2addr v1, p1

    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    .line 2267
    invoke-static {p1}, Lcom/miui/home/launcher/ScreenView;->access$500(Lcom/miui/home/launcher/ScreenView;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v0, 0x0

    .line 2266
    invoke-virtual {p2, p1, v0}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    goto :goto_0

    .line 2272
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p1, v2}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    .line 2273
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    iget p2, p1, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    invoke-static {p1, p2}, Lcom/miui/home/launcher/ScreenView;->access$600(Lcom/miui/home/launcher/ScreenView;I)V

    goto :goto_0

    .line 2261
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 2262
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;->this$0:Lcom/miui/home/launcher/ScreenView;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
