.class public abstract Lcom/miui/maml/ActionCommand$StateTracker;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    const/4 v1, 0x0

    .line 327
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 329
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 335
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2

    .line 429
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    return v1

    .line 439
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isTurningOn()Z
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 4

    .line 381
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 397
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 392
    :cond_1
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 393
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 388
    :cond_2
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 389
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 384
    :cond_3
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 385
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    :goto_0
    if-eqz v0, :cond_6

    .line 401
    iget-boolean p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    if-nez p2, :cond_6

    .line 402
    iget-boolean p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz p2, :cond_6

    const-string p2, "ActionCommand"

    const-string v0, "processing deferred state change"

    .line 403
    invoke-static {p2, v0}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "... but intended state matches, so no changes."

    .line 405
    invoke-static {p2, p1}, Lcom/miui/maml/util/MamlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 406
    :cond_4
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz p2, :cond_5

    .line 407
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 408
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    .line 410
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    :cond_6
    return-void
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4

    .line 342
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 353
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 357
    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 358
    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v0, :cond_3

    .line 363
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    goto :goto_1

    .line 365
    :cond_3
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    .line 366
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    :goto_1
    return-void
.end method
