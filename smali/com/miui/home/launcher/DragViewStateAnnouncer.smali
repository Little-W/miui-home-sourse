.class Lcom/miui/home/launcher/DragViewStateAnnouncer;
.super Ljava/lang/Object;
.source "DragViewStateAnnouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mTargetView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/miui/home/launcher/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    return-void
.end method

.method static createFor(Landroid/view/View;)Lcom/miui/home/launcher/DragViewStateAnnouncer;
    .locals 1

    .line 32
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/miui/home/launcher/DragViewStateAnnouncer;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/DragViewStateAnnouncer;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method announce(Ljava/lang/CharSequence;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/miui/home/launcher/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/miui/home/launcher/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 19
    iget-object p1, p0, Lcom/miui/home/launcher/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/miui/home/launcher/DragViewStateAnnouncer;->mTargetView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method
