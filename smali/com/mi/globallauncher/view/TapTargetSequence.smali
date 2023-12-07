.class public Lcom/mi/globallauncher/view/TapTargetSequence;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/view/TapTargetSequence$Listener;
    }
.end annotation


# instance fields
.field private active:Z

.field private final activity:Landroid/app/Activity;

.field considerOuterCircleCanceled:Z

.field continueOnCancel:Z

.field private currentView:Lcom/mi/globallauncher/view/TapTargetView;

.field private final dialog:Landroid/app/Dialog;

.field listener:Lcom/mi/globallauncher/view/TapTargetSequence$Listener;

.field private final tapTargetListener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

.field private final targets:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/mi/globallauncher/view/TapTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mi/globallauncher/view/TapTargetSequence$1;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/view/TapTargetSequence$1;-><init>(Lcom/mi/globallauncher/view/TapTargetSequence;)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->tapTargetListener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->activity:Landroid/app/Activity;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->dialog:Landroid/app/Dialog;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Activity is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mi/globallauncher/view/TapTargetSequence$1;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/view/TapTargetSequence$1;-><init>(Lcom/mi/globallauncher/view/TapTargetSequence;)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->tapTargetListener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->dialog:Landroid/app/Dialog;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->activity:Landroid/app/Activity;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given null Dialog"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->active:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->currentView:Lcom/mi/globallauncher/view/TapTargetView;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/mi/globallauncher/view/TapTargetView;->cancelable:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->currentView:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {v0, v1}, Lcom/mi/globallauncher/view/TapTargetView;->dismiss(Z)V

    iput-boolean v1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->active:Z

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->listener:Lcom/mi/globallauncher/view/TapTargetSequence$Listener;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->currentView:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    invoke-interface {v0, p0}, Lcom/mi/globallauncher/view/TapTargetSequence$Listener;->onSequenceCanceled(Lcom/mi/globallauncher/view/TapTarget;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public considerOuterCircleCanceled(Z)Lcom/mi/globallauncher/view/TapTargetSequence;
    .locals 0

    iput-boolean p1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->considerOuterCircleCanceled:Z

    return-object p0
.end method

.method public continueOnCancel(Z)Lcom/mi/globallauncher/view/TapTargetSequence;
    .locals 0

    iput-boolean p1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->continueOnCancel:Z

    return-object p0
.end method

.method public listener(Lcom/mi/globallauncher/view/TapTargetSequence$Listener;)Lcom/mi/globallauncher/view/TapTargetSequence;
    .locals 0

    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->listener:Lcom/mi/globallauncher/view/TapTargetSequence$Listener;

    return-object p0
.end method

.method showNext()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/globallauncher/view/TapTarget;

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->tapTargetListener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    invoke-static {v1, v0, v2}, Lcom/mi/globallauncher/view/TapTargetView;->showFor(Landroid/app/Activity;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)Lcom/mi/globallauncher/view/TapTargetView;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->currentView:Lcom/mi/globallauncher/view/TapTargetView;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->dialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->tapTargetListener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    invoke-static {v1, v0, v2}, Lcom/mi/globallauncher/view/TapTargetView;->showFor(Landroid/app/Dialog;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)Lcom/mi/globallauncher/view/TapTargetView;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->currentView:Lcom/mi/globallauncher/view/TapTargetView;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->currentView:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->listener:Lcom/mi/globallauncher/view/TapTargetSequence$Listener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/mi/globallauncher/view/TapTargetSequence$Listener;->onSequenceFinish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->active:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->active:Z

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetSequence;->showNext()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startAt(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->active:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    sub-int/2addr v0, p1

    :goto_0
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetSequence;->start()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in sequence"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given invalid index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startWith(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->active:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/globallauncher/view/TapTarget;

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/TapTarget;->id()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/globallauncher/view/TapTarget;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mi/globallauncher/view/TapTarget;->id()I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetSequence;->start()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not in sequence"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public target(Lcom/mi/globallauncher/view/TapTarget;)Lcom/mi/globallauncher/view/TapTargetSequence;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public targets(Ljava/util/List;)Lcom/mi/globallauncher/view/TapTargetSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mi/globallauncher/view/TapTarget;",
            ">;)",
            "Lcom/mi/globallauncher/view/TapTargetSequence;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs targets([Lcom/mi/globallauncher/view/TapTarget;)Lcom/mi/globallauncher/view/TapTargetSequence;
    .locals 1

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetSequence;->targets:Ljava/util/Queue;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method
