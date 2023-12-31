.class public Lcom/android/hideapi/TransitionInfoExpose$RootExpose;
.super Ljava/lang/Object;
.source "TransitionInfoExpose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hideapi/TransitionInfoExpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootExpose"
.end annotation


# instance fields
.field private final instance:Landroid/window/TransitionInfo$Root;


# direct methods
.method private constructor <init>(Landroid/window/TransitionInfo$Root;)V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/android/hideapi/TransitionInfoExpose$RootExpose;->instance:Landroid/window/TransitionInfo$Root;

    return-void
.end method

.method public static box(Landroid/window/TransitionInfo$Root;)Lcom/android/hideapi/TransitionInfoExpose$RootExpose;
    .locals 1

    .line 255
    new-instance v0, Lcom/android/hideapi/TransitionInfoExpose$RootExpose;

    invoke-direct {v0, p0}, Lcom/android/hideapi/TransitionInfoExpose$RootExpose;-><init>(Landroid/window/TransitionInfo$Root;)V

    return-object v0
.end method


# virtual methods
.method public getLeash()Landroid/view/SurfaceControl;
    .locals 4

    .line 259
    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$RootExpose;->instance:Landroid/window/TransitionInfo$Root;

    const-class v0, Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getLeash"

    invoke-static {p0, v0, v3, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getOffset()Landroid/graphics/Point;
    .locals 4

    .line 263
    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$RootExpose;->instance:Landroid/window/TransitionInfo$Root;

    const-class v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getOffset"

    invoke-static {p0, v0, v3, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    return-object p0
.end method
