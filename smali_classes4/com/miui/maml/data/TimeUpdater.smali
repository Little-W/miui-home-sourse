.class public Lcom/miui/maml/data/TimeUpdater;
.super Ljava/lang/Object;
.source "TimeUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/data/DateTimeVariableUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/DateTimeVariableUpdater;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/maml/data/TimeUpdater;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/miui/maml/data/TimeUpdater;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/DateTimeVariableUpdater;

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/data/DateTimeVariableUpdater;->checkUpdateTime()V

    :cond_0
    return-void
.end method
