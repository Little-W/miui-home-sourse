.class Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollingClickGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 3494
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/Workspace$1;)V
    .locals 0

    .line 3494
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;-><init>(Lcom/miui/home/launcher/Workspace;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 3497
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getTouchState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3498
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->getCurrentCellLayout()Lcom/miui/home/launcher/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3499
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 3500
    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 3502
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3503
    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3504
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v5}, Lcom/miui/home/launcher/Workspace;->access$2000(Lcom/miui/home/launcher/Workspace;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 3505
    iget-object v5, p0, Lcom/miui/home/launcher/Workspace$ScrollingClickGestureListener;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-static {v5}, Lcom/miui/home/launcher/Workspace;->access$2000(Lcom/miui/home/launcher/Workspace;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3506
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method
