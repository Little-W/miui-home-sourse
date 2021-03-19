.class Lcom/google/android/filament/android/UiHelper$TextureViewHandler;
.super Ljava/lang/Object;
.source "UiHelper.java"

# interfaces
.implements Lcom/google/android/filament/android/UiHelper$RenderSurface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/android/UiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextureViewHandler"
.end annotation


# instance fields
.field private mSurface:Landroid/view/Surface;

.field private mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lcom/google/android/filament/android/UiHelper;


# direct methods
.method constructor <init>(Lcom/google/android/filament/android/UiHelper;Landroid/view/TextureView;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->mTextureView:Landroid/view/TextureView;

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, v0}, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public resize(II)V
    .locals 2

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->this$0:Lcom/google/android/filament/android/UiHelper;

    invoke-static {v0}, Lcom/google/android/filament/android/UiHelper;->access$000(Lcom/google/android/filament/android/UiHelper;)Lcom/google/android/filament/android/UiHelper$RendererCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->onResized(II)V

    return-void
.end method

.method setSurface(Landroid/view/Surface;)V
    .locals 1

    if-nez p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 220
    :cond_0
    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;->mSurface:Landroid/view/Surface;

    return-void
.end method
