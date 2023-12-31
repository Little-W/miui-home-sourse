.class public Lmiui/view/ViewRootImplExpose;
.super Ljava/lang/Object;
.source "ViewRootImplExpose.java"


# static fields
.field static final CLASS:Lcom/miui/expose/utils/ClassHolder;

.field private static final getSurfaceControl:Lcom/miui/expose/utils/MethodHolder;

.field private static final registerRtFrameCallback:Lcom/miui/expose/utils/MethodHolder;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lcom/miui/expose/utils/ClassHolder;

    const-string v1, "android.view.ViewRootImpl"

    invoke-direct {v0, v1}, Lcom/miui/expose/utils/ClassHolder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/view/ViewRootImplExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    .line 15
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/view/ViewRootImplExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/miui/expose/utils/ClassHolder;

    sget-object v3, Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/miui/expose/utils/ParameterTypes;->of([Lcom/miui/expose/utils/ClassHolder;)Lcom/miui/expose/utils/ParameterTypes;

    move-result-object v2

    const-string v3, "registerRtFrameCallback"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/view/ViewRootImplExpose;->registerRtFrameCallback:Lcom/miui/expose/utils/MethodHolder;

    .line 16
    new-instance v0, Lcom/miui/expose/utils/MethodHolder;

    sget-object v1, Lmiui/view/ViewRootImplExpose;->CLASS:Lcom/miui/expose/utils/ClassHolder;

    sget-object v2, Lcom/miui/expose/utils/ParameterTypes;->EMPTY:Lcom/miui/expose/utils/ParameterTypes;

    const-string v3, "getSurfaceControl"

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/expose/utils/MethodHolder;-><init>(Lcom/miui/expose/utils/ClassHolder;Ljava/lang/String;Lcom/miui/expose/utils/ParameterTypes;)V

    sput-object v0, Lmiui/view/ViewRootImplExpose;->getSurfaceControl:Lcom/miui/expose/utils/MethodHolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lmiui/view/ViewRootImplExpose;->instance:Ljava/lang/Object;

    return-void
.end method

.method public static box(Ljava/lang/Object;)Lmiui/view/ViewRootImplExpose;
    .locals 1

    .line 38
    new-instance v0, Lmiui/view/ViewRootImplExpose;

    invoke-direct {v0, p0}, Lmiui/view/ViewRootImplExpose;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 2

    .line 30
    sget-object v0, Lmiui/view/ViewRootImplExpose;->getSurfaceControl:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/view/ViewRootImplExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public registerRtFrameCallback(Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;)V
    .locals 3

    .line 25
    sget-object v0, Lmiui/view/ViewRootImplExpose;->registerRtFrameCallback:Lcom/miui/expose/utils/MethodHolder;

    iget-object p0, p0, Lmiui/view/ViewRootImplExpose;->instance:Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmiui/graphics/HardwareRendererExpose$FrameDrawingCallbackExpose;->unbox()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/miui/expose/utils/MethodHolder;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
