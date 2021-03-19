.class Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;
.super Ljava/lang/Object;
.source "BitmapProvider.java"

# interfaces
.implements Lcom/miui/maml/ResourceManager$AsyncLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Ljava/lang/String;Lcom/miui/maml/ResourceManager$BitmapInfo;)V
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v0, v0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mSrcNameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v1, v1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BitmapProvider"

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load image async complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " last cached "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-static {v3}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->access$100(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object v1, v1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move-object p2, v2

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/miui/maml/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {v1, p2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 234
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    invoke-static {p2, p1}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->access$102(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    iput-object v2, p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p2, "BitmapProvider"

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load image async complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not equals "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object p1, p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mLoadingBitmapName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$1;->this$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object p1, p1, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    return-void

    :catchall_0
    move-exception p1

    .line 239
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
