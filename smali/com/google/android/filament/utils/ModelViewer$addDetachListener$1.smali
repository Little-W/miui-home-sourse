.class public final Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;
.super Ljava/lang/Object;
.source "ModelViewer.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/filament/utils/ModelViewer;->addDetachListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/filament/utils/ModelViewer;


# direct methods
.method constructor <init>(Lcom/google/android/filament/utils/ModelViewer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 272
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {p1}, Lcom/google/android/filament/utils/ModelViewer;->access$getUiHelper$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/android/UiHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/android/UiHelper;->detach()V

    .line 274
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/ModelViewer;->destroyModel()V

    .line 275
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {p1}, Lcom/google/android/filament/utils/ModelViewer;->access$getAssetLoader$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/gltfio/AssetLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/AssetLoader;->destroy()V

    .line 276
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {p1}, Lcom/google/android/filament/utils/ModelViewer;->access$getResourceLoader$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/gltfio/ResourceLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->destroy()V

    .line 278
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/ModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/ModelViewer;->getLight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyEntity(I)V

    .line 279
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/ModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {v0}, Lcom/google/android/filament/utils/ModelViewer;->access$getRenderer$p(Lcom/google/android/filament/utils/ModelViewer;)Lcom/google/android/filament/Renderer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyRenderer(Lcom/google/android/filament/Renderer;)V

    .line 280
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/ModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/ModelViewer;->getView()Lcom/google/android/filament/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyView(Lcom/google/android/filament/View;)V

    .line 281
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/ModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/ModelViewer;->getScene()Lcom/google/android/filament/Scene;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyScene(Lcom/google/android/filament/Scene;)V

    .line 282
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/ModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/ModelViewer;->getCamera()Lcom/google/android/filament/Camera;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Engine;->destroyCamera(Lcom/google/android/filament/Camera;)V

    .line 284
    invoke-static {}, Lcom/google/android/filament/EntityManager;->get()Lcom/google/android/filament/EntityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {v0}, Lcom/google/android/filament/utils/ModelViewer;->getLight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/EntityManager;->destroy(I)V

    .line 286
    iget-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$addDetachListener$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/ModelViewer;->getEngine()Lcom/google/android/filament/Engine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->destroy()V

    return-void
.end method
