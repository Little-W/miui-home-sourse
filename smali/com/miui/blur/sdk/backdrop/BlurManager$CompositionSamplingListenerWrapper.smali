.class Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;
.super Landroid/view/MiuiCompositionSamplingListener;
.source "BlurManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/blur/sdk/backdrop/BlurManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompositionSamplingListenerWrapper"
.end annotation


# static fields
.field private static final POOL:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/GraphicBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 96
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->POOL:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 102
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {}, Lcom/miui/blur/sdk/backdrop/BlurManager;->access$000()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Landroid/view/MiuiCompositionSamplingListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static acquire()Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;
    .locals 1

    .line 121
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->POOL:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static release(Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->reset()V

    .line 130
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->POOL:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->destroy()V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public onSampleCollected(Landroid/graphics/GraphicBuffer;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->mCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/GraphicBuffer;",
            ">;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method
