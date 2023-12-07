.class public Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hideapi/SurfaceControlExpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuilderExpose"
.end annotation


# instance fields
.field private final instance:Landroid/view/SurfaceControl$Builder;


# direct methods
.method private constructor <init>(Landroid/view/SurfaceControl$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;->instance:Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public static box(Landroid/view/SurfaceControl$Builder;)Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;
    .locals 1

    new-instance v0, Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;

    invoke-direct {v0, p0}, Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;-><init>(Landroid/view/SurfaceControl$Builder;)V

    return-object v0
.end method


# virtual methods
.method public setContainerLayer()Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;
    .locals 5

    iget-object v0, p0, Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;->instance:Landroid/view/SurfaceControl$Builder;

    const-class v1, Landroid/view/SurfaceControl$Builder;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "setContainerLayer"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public unbox()Landroid/view/SurfaceControl$Builder;
    .locals 0

    iget-object p0, p0, Lcom/android/hideapi/SurfaceControlExpose$BuilderExpose;->instance:Landroid/view/SurfaceControl$Builder;

    return-object p0
.end method
