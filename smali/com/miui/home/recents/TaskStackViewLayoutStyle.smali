.class public abstract Lcom/miui/home/recents/TaskStackViewLayoutStyle;
.super Ljava/lang/Object;
.source "TaskStackViewLayoutStyle.java"


# instance fields
.field protected mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

.field protected mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

.field protected mTaskStackViewScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILandroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;)Lcom/miui/home/recents/TaskStackViewLayoutStyle;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 34
    new-instance p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/TaskStackViewLayoutStyleVertical;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;)V

    return-object p0

    .line 32
    :cond_0
    new-instance p0, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/TaskStackViewLayoutStyleHorizontal;-><init>(Landroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;)V

    return-object p0
.end method


# virtual methods
.method public abstract canExitRecentsWhenScrollOverThreshold()Z
.end method

.method public abstract dismissTaskViewAnim(Lcom/miui/home/recents/views/TaskStackView;Ljava/lang/Runnable;)V
.end method

.method public abstract getScrollDirection()I
.end method

.method public getStableLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->mStableLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    return-object v0
.end method

.method public abstract getStyleValue()I
.end method

.method public abstract getSwipeDirection()I
.end method

.method public getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    return-object v0
.end method

.method public getTaskStackViewScroller()Lcom/miui/home/recents/views/TaskStackViewScroller;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->mTaskStackViewScroller:Lcom/miui/home/recents/views/TaskStackViewScroller;

    return-object v0
.end method

.method public abstract isSmallWindowTextAndMemoryTextTranslationWhenScroll()Z
.end method

.method public abstract updateTaskViewsTranslationWithoutRunningTask(Lcom/miui/home/recents/views/TaskStackView;IF)V
.end method
