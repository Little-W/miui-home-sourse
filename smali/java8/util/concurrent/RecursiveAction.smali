.class public abstract Ljava8/util/concurrent/RecursiveAction;
.super Ljava8/util/concurrent/ForkJoinTask;
.source "RecursiveAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/concurrent/ForkJoinTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x489d6925990753ceL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava8/util/concurrent/ForkJoinTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract compute()V
.end method

.method protected final exec()Z
    .locals 1

    .line 160
    invoke-virtual {p0}, Ljava8/util/concurrent/RecursiveAction;->compute()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .line 135
    invoke-virtual {p0}, Ljava8/util/concurrent/RecursiveAction;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/RecursiveAction;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method protected final setRawResult(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
