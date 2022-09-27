.class Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;
.super Landroid/os/AsyncTask;
.source "UniformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "setImageTextureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/ResourceManager;",
            ">;"
        }
    .end annotation
.end field

.field private mPremultiplied:Z

.field private mUniformRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;Lcom/miui/maml/data/Expression;)V
    .locals 4

    .line 422
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;->mFilePath:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p4, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p4}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p4, v0, v2

    if-lez p4, :cond_1

    const/4 p1, 0x1

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;->mPremultiplied:Z

    .line 425
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    .line 426
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;->mUniformRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    .line 431
    iget-object p1, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/maml/ResourceManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 433
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 434
    iget-boolean v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;->mPremultiplied:Z

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 435
    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string v0, "Uniform"

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong bitmap path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 417
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;->mUniformRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;

    if-eqz v0, :cond_0

    .line 448
    invoke-static {v0, p1}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;->access$000(Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 417
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/filament/UniformFactory$ImageUniform$setImageTextureTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
