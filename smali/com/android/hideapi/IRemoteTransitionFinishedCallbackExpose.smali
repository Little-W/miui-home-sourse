.class public Lcom/android/hideapi/IRemoteTransitionFinishedCallbackExpose;
.super Ljava/lang/Object;


# instance fields
.field private final instance:Landroid/window/IRemoteTransitionFinishedCallback;


# direct methods
.method private constructor <init>(Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/hideapi/IRemoteTransitionFinishedCallbackExpose;->instance:Landroid/window/IRemoteTransitionFinishedCallback;

    return-void
.end method

.method public static box(Landroid/window/IRemoteTransitionFinishedCallback;)Lcom/android/hideapi/IRemoteTransitionFinishedCallbackExpose;
    .locals 1

    new-instance v0, Lcom/android/hideapi/IRemoteTransitionFinishedCallbackExpose;

    invoke-direct {v0, p0}, Lcom/android/hideapi/IRemoteTransitionFinishedCallbackExpose;-><init>(Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-object v0
.end method


# virtual methods
.method public onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    iget-object p0, p0, Lcom/android/hideapi/IRemoteTransitionFinishedCallbackExpose;->instance:Landroid/window/IRemoteTransitionFinishedCallback;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/window/WindowContainerTransaction;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/view/SurfaceControl$Transaction;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const-string p1, "onTransitionFinished"

    invoke-static {p0, v0, p1, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
