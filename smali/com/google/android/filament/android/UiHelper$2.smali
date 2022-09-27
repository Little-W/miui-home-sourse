.class Lcom/google/android/filament/android/UiHelper$2;
.super Ljava/lang/Object;
.source "UiHelper.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/filament/android/UiHelper;->attachTo(Landroid/view/TextureView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/filament/android/UiHelper;


# direct methods
.method constructor <init>(Lcom/google/android/filament/android/UiHelper;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 457
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {v0}, Lcom/google/android/filament/android/UiHelper;->access$300(Lcom/google/android/filament/android/UiHelper;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {v0}, Lcom/google/android/filament/android/UiHelper;->access$400(Lcom/google/android/filament/android/UiHelper;)I

    move-result v0

    if-lez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {v0}, Lcom/google/android/filament/android/UiHelper;->access$300(Lcom/google/android/filament/android/UiHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {v1}, Lcom/google/android/filament/android/UiHelper;->access$400(Lcom/google/android/filament/android/UiHelper;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 463
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 464
    iget-object p1, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p1}, Lcom/google/android/filament/android/UiHelper;->access$500(Lcom/google/android/filament/android/UiHelper;)Lcom/google/android/filament/android/UiHelper$RenderSurface;

    move-result-object p1

    check-cast p1, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;

    .line 465
    invoke-virtual {p1, v0}, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->setSurface(Landroid/view/Surface;)V

    .line 467
    iget-object p1, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p1, v0}, Lcom/google/android/filament/android/UiHelper;->access$100(Lcom/google/android/filament/android/UiHelper;Landroid/view/Surface;)V

    .line 471
    iget-object p1, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p1}, Lcom/google/android/filament/android/UiHelper;->access$000(Lcom/google/android/filament/android/UiHelper;)Lcom/google/android/filament/android/UiHelper$RendererCallback;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->onResized(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 489
    iget-object p1, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p1}, Lcom/google/android/filament/android/UiHelper;->access$200(Lcom/google/android/filament/android/UiHelper;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {v0}, Lcom/google/android/filament/android/UiHelper;->access$300(Lcom/google/android/filament/android/UiHelper;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {v0}, Lcom/google/android/filament/android/UiHelper;->access$400(Lcom/google/android/filament/android/UiHelper;)I

    move-result v0

    if-lez v0, :cond_0

    .line 479
    iget-object p2, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p2}, Lcom/google/android/filament/android/UiHelper;->access$300(Lcom/google/android/filament/android/UiHelper;)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p3}, Lcom/google/android/filament/android/UiHelper;->access$400(Lcom/google/android/filament/android/UiHelper;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 480
    iget-object p1, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p1}, Lcom/google/android/filament/android/UiHelper;->access$000(Lcom/google/android/filament/android/UiHelper;)Lcom/google/android/filament/android/UiHelper$RendererCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p2}, Lcom/google/android/filament/android/UiHelper;->access$300(Lcom/google/android/filament/android/UiHelper;)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p3}, Lcom/google/android/filament/android/UiHelper;->access$400(Lcom/google/android/filament/android/UiHelper;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->onResized(II)V

    goto :goto_0

    .line 482
    :cond_0
    iget-object p1, p0, Lcom/google/android/filament/android/UiHelper$2;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {p1}, Lcom/google/android/filament/android/UiHelper;->access$000(Lcom/google/android/filament/android/UiHelper;)Lcom/google/android/filament/android/UiHelper$RendererCallback;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->onResized(II)V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
