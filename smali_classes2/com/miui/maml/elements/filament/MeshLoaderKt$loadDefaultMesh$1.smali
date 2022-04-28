.class final Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MeshLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/filament/MeshLoaderKt;->loadDefaultMesh(Lcom/google/android/filament/MaterialInstance;Lcom/google/android/filament/Engine;)Lcom/miui/maml/elements/filament/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;

    invoke-direct {v0}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;-><init>()V

    sput-object v0, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;->INSTANCE:Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/nio/ByteBuffer;

    check-cast p2, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$1;->invoke(Ljava/nio/ByteBuffer;Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/nio/ByteBuffer;Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;)Ljava/nio/ByteBuffer;
    .locals 1

    const-string v0, "$this$put"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->getX()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {p2}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->getY()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {p2}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->getU()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {p2}, Lcom/miui/maml/elements/filament/MeshLoaderKt$loadDefaultMesh$Vertex;->getV()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    return-object p1
.end method
