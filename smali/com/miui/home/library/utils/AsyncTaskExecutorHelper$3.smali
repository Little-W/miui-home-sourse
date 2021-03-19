.class final Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;
.super Landroid/os/AsyncTask;
.source "AsyncTaskExecutorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->exec(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$consumer:Ljava/util/function/Consumer;

.field final synthetic val$function:Ljava/util/function/Function;

.field final synthetic val$onTaskCancel:Ljava/util/function/Consumer;

.field final synthetic val$param:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/function/Function;Ljava/lang/Object;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;->val$function:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;->val$param:Ljava/lang/Object;

    iput-object p3, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;->val$consumer:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;->val$onTaskCancel:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 126
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TR;"
        }
    .end annotation

    .line 130
    iget-object p1, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;->val$function:Ljava/util/function/Function;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;->val$function:Ljava/util/function/Function;

    iget-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;->val$param:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;->val$onTaskCancel:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$3;->val$consumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
