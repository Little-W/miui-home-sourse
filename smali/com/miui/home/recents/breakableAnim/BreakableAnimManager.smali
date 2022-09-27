.class public abstract Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;
.super Ljava/lang/Object;
.source "BreakableAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AnimType:",
        "Ljava/lang/Object;",
        "AnimParamType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mCurrentAnim:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAnimType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract addBreakableListener(Ljava/lang/Object;Landroid/animation/AnimatorListenerAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAnimType;",
            "Landroid/animation/AnimatorListenerAdapter;",
            ")V"
        }
    .end annotation
.end method

.method public abstract cancelAnim()V
.end method

.method public getCurrentAnim()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAnimType;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->mCurrentAnim:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract getCurrentAnimParam()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAnimParamType;"
        }
    .end annotation
.end method

.method public abstract isAnimChainOn()Z
.end method

.method protected abstract onInitFromLastAnimParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAnimType;TAnimParamType;TAnimParamType;)V"
        }
    .end annotation
.end method

.method public setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAnimType;TAnimParamType;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAnimType;TAnimParamType;Z)V"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager$1;-><init>(Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->addBreakableListener(Ljava/lang/Object;Landroid/animation/AnimatorListenerAdapter;)V

    .line 50
    invoke-virtual {p0}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->isAnimChainOn()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->getCurrentAnimParam()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 54
    invoke-virtual {p0, p1, p3, p2}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->onInitFromLastAnimParam(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/breakableAnim/BreakableAnimManager;->cancelAnim()V

    :cond_1
    return-void
.end method
