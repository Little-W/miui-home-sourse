.class Lcom/miui/home/launcher/LauncherWidgetContainerView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LauncherWidgetContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherWidgetContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherWidgetContainerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherWidgetContainerView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView$1;->this$0:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView$1;->this$0:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ItemInfo;

    .line 40
    instance-of v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;

    iget-boolean v1, v0, Lcom/miui/home/launcher/MIUIWidgetBasicInfo;->isMIUIWidget:Z

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/miui/home/launcher/LauncherWidgetContainerView$1;->this$0:Lcom/miui/home/launcher/LauncherWidgetContainerView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherWidgetContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickMiuiWidget(Landroid/content/Context;Lcom/miui/home/launcher/MIUIWidgetBasicInfo;)V

    .line 45
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
