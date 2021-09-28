.class Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;
.super Landroid/os/AsyncTask;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Lcom/miui/maml/ResourceManager$BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

.field private mSrc:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/maml/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ResourceManager;Lcom/miui/maml/ResourceManager$AsyncLoadListener;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lcom/miui/maml/ResourceManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 245
    iput-object p2, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;
    .locals 1

    const/4 v0, 0x0

    .line 250
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    .line 251
    iget-object p1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lcom/miui/maml/ResourceManager;

    invoke-static {v0, p1}, Lcom/miui/maml/ResourceManager;->access$000(Lcom/miui/maml/ResourceManager;Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 239
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/miui/maml/ResourceManager$BitmapInfo;)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lcom/miui/maml/ResourceManager;

    invoke-static {v0}, Lcom/miui/maml/ResourceManager;->access$100(Lcom/miui/maml/ResourceManager;)Landroidx/collection/ArraySet;

    move-result-object v0

    monitor-enter v0

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mLoadListener:Lcom/miui/maml/ResourceManager$AsyncLoadListener;

    iget-object v2, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/miui/maml/ResourceManager$AsyncLoadListener;->onLoadComplete(Ljava/lang/String;Lcom/miui/maml/ResourceManager$BitmapInfo;)V

    .line 261
    iget-object p1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->this$0:Lcom/miui/maml/ResourceManager;

    invoke-static {p1}, Lcom/miui/maml/ResourceManager;->access$100(Lcom/miui/maml/ResourceManager;)Landroidx/collection/ArraySet;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->mSrc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 262
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 239
    check-cast p1, Lcom/miui/maml/ResourceManager$BitmapInfo;

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager$LoadBitmapAsyncTask;->onPostExecute(Lcom/miui/maml/ResourceManager$BitmapInfo;)V

    return-void
.end method
