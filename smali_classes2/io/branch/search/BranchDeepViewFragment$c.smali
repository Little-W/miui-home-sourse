.class public final Lio/branch/search/BranchDeepViewFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/BranchDeepViewFragment;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;ILandroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lio/branch/search/BranchDeepViewFragment$c;->a:Landroid/widget/ImageView;

    iput p2, p0, Lio/branch/search/BranchDeepViewFragment$c;->b:I

    iput-object p3, p0, Lio/branch/search/BranchDeepViewFragment$c;->c:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    iget-object p1, p0, Lio/branch/search/BranchDeepViewFragment$c;->a:Landroid/widget/ImageView;

    new-instance p2, Lio/branch/search/BranchDeepViewFragment$c$a;

    invoke-direct {p2, p0}, Lio/branch/search/BranchDeepViewFragment$c$a;-><init>(Lio/branch/search/BranchDeepViewFragment$c;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/branch/search/BranchDeepViewFragment$c;->a:Landroid/widget/ImageView;

    new-instance v2, Lio/branch/search/BranchDeepViewFragment$c$b;

    invoke-direct {v2, p0, v0}, Lio/branch/search/BranchDeepViewFragment$c$b;-><init>(Lio/branch/search/BranchDeepViewFragment$c;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bitmap is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BranchDeepViewFragment.loadImage"

    invoke-static {v1, v0}, Lio/branch/search/b0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lio/branch/search/BranchDeepViewFragment$c;->a:Landroid/widget/ImageView;

    new-instance v1, Lio/branch/search/BranchDeepViewFragment$c$c;

    invoke-direct {v1, p0}, Lio/branch/search/BranchDeepViewFragment$c$c;-><init>(Lio/branch/search/BranchDeepViewFragment$c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    return-void

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    throw v0
.end method
