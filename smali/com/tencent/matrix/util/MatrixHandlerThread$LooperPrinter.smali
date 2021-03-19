.class final Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;
.super Ljava/lang/Object;
.source "MatrixHandlerThread.java"

# interfaces
.implements Landroid/util/Printer;
.implements Lcom/tencent/matrix/listeners/IAppForeground;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/util/MatrixHandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LooperPrinter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;
    }
.end annotation


# instance fields
.field private hashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;",
            ">;"
        }
    .end annotation
.end field

.field private isForeground:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    sget-object v0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->INSTANCE:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-virtual {v0, p0}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->addListener(Lcom/tencent/matrix/listeners/IAppForeground;)V

    .line 100
    sget-object v0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->INSTANCE:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-virtual {v0}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->isAppForeground()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;->isForeground:Z

    return-void
.end method


# virtual methods
.method public onForeground(Z)V
    .locals 8

    .line 127
    iput-boolean p1, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;->isForeground:Z

    if-eqz p1, :cond_2

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 130
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 131
    iget-object v2, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;

    .line 132
    iget v5, v3, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;->count:I

    if-le v5, v4, :cond_0

    .line 133
    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_1
    new-instance v2, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$1;

    invoke-direct {v2, p0}, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$1;-><init>(Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    iget-object v2, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 143
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Matrix.HandlerThread"

    const-string v3, "matrix default thread has exec in background! %s cost:%s"

    const/4 v5, 0x2

    .line 144
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v5, v4

    invoke-static {v2, v3, v5}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 147
    :cond_2
    iget-object p1, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_3
    :goto_1
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;->isForeground:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_4

    const-string v0, "} "

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "@"

    .line 110
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v0, :cond_3

    if-gez v1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;

    if-nez v0, :cond_2

    .line 117
    new-instance v0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;

    invoke-direct {v0, p0}, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;-><init>(Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;)V

    .line 118
    iput-object p1, v0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;->key:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;->hashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_2
    iget p1, v0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter$Info;->count:I

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method
