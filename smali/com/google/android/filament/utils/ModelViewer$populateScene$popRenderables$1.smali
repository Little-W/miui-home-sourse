.class final Lcom/google/android/filament/utils/ModelViewer$populateScene$popRenderables$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModelViewer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/filament/utils/ModelViewer;->populateScene(Lcom/google/android/filament/gltfio/FilamentAsset;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $asset:Lcom/google/android/filament/gltfio/FilamentAsset;

.field final synthetic $count:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/google/android/filament/utils/ModelViewer;


# direct methods
.method constructor <init>(Lcom/google/android/filament/utils/ModelViewer;Lkotlin/jvm/internal/Ref$IntRef;Lcom/google/android/filament/gltfio/FilamentAsset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/filament/utils/ModelViewer$populateScene$popRenderables$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    iput-object p2, p0, Lcom/google/android/filament/utils/ModelViewer$populateScene$popRenderables$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/google/android/filament/utils/ModelViewer$populateScene$popRenderables$1;->$asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/filament/utils/ModelViewer$populateScene$popRenderables$1;->invoke()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Z
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/google/android/filament/utils/ModelViewer$populateScene$popRenderables$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v1, p0, Lcom/google/android/filament/utils/ModelViewer$populateScene$popRenderables$1;->$asset:Lcom/google/android/filament/gltfio/FilamentAsset;

    iget-object v2, p0, Lcom/google/android/filament/utils/ModelViewer$populateScene$popRenderables$1;->this$0:Lcom/google/android/filament/utils/ModelViewer;

    invoke-static {v2}, Lcom/google/android/filament/utils/ModelViewer;->access$getReadyRenderables$p(Lcom/google/android/filament/utils/ModelViewer;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/gltfio/FilamentAsset;->popRenderables([I)I

    move-result v1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object p0, p0, Lcom/google/android/filament/utils/ModelViewer$populateScene$popRenderables$1;->$count:Lkotlin/jvm/internal/Ref$IntRef;

    iget p0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
