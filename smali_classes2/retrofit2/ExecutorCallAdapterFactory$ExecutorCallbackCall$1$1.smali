.class Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

.field final synthetic val$response:Lretrofit2/Response;


# direct methods
.method constructor <init>(Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;Lretrofit2/Response;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iput-object p2, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->val$response:Lretrofit2/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->val$callback:Lretrofit2/Callback;

    iget-object p0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object p0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v1}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v0, v0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->val$callback:Lretrofit2/Callback;

    iget-object v1, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->this$1:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;

    iget-object v1, v1, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1;->this$0:Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object p0, p0, Lretrofit2/ExecutorCallAdapterFactory$ExecutorCallbackCall$1$1;->val$response:Lretrofit2/Response;

    invoke-interface {v0, v1, p0}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    :goto_0
    return-void
.end method
