.class public Lcom/miui/blur/sdk/backdrop/BlurManager;
.super Ljava/lang/Object;
.source "BlurManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;
    }
.end annotation


# static fields
.field static final BACKDROP_SAMPLING_ENABLED:Z

.field private static final RS_HANDLER:Landroid/os/Handler;

.field private static final RS_THREAD:Landroid/os/HandlerThread;

.field private static final sBlurLayers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/ViewRootImpl;",
            "Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static sRenderScript:Landroid/renderscript/RenderScript;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    .line 34
    invoke-static {}, Lcom/miui/blur/sdk/backdrop/BlurManager;->isNecessaryClassExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.miui.backdrop_sampling_enabled"

    .line 35
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->BACKDROP_SAMPLING_ENABLED:Z

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "rs_blur"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->RS_THREAD:Landroid/os/HandlerThread;

    .line 43
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->RS_THREAD:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->RS_THREAD:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->RS_HANDLER:Landroid/os/Handler;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->sBlurLayers:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .line 21
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->RS_HANDLER:Landroid/os/Handler;

    return-object v0
.end method

.method public static draw(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 2

    .line 88
    invoke-interface {p1}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->sBlurLayers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->draw(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    :cond_0
    return-void
.end method

.method private static isNecessaryClassExists()Z
    .locals 2

    .line 25
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.view.MiuiCompositionSamplingListener"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public static register(Landroid/content/Context;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 4

    .line 52
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->sRenderScript:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    .line 53
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->sRenderScript:Landroid/renderscript/RenderScript;

    .line 56
    :cond_0
    invoke-interface {p1}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 58
    sget-object v2, Lcom/miui/blur/sdk/backdrop/BlurManager;->sBlurLayers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 59
    new-instance v1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    sget-object v2, Lcom/miui/blur/sdk/backdrop/BlurManager;->sRenderScript:Landroid/renderscript/RenderScript;

    sget-object v3, Lcom/miui/blur/sdk/backdrop/BlurManager;->RS_HANDLER:Landroid/os/Handler;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;-><init>(Landroid/content/Context;Landroid/view/ViewRootImpl;Landroid/renderscript/RenderScript;Landroid/os/Handler;)V

    .line 60
    sget-object p0, Lcom/miui/blur/sdk/backdrop/BlurManager;->sBlurLayers:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 64
    :cond_1
    sget-object p0, Lcom/miui/blur/sdk/backdrop/BlurManager;->sBlurLayers:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    if-eqz p0, :cond_2

    .line 66
    invoke-virtual {p0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->register(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->start()V

    :cond_3
    return-void
.end method

.method public static unregister(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V
    .locals 2

    .line 75
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getBlurViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->sBlurLayers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1, p0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->unregister(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    .line 80
    invoke-virtual {v1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 81
    sget-object p0, Lcom/miui/blur/sdk/backdrop/BlurManager;->sBlurLayers:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->destroy()V

    :cond_0
    return-void
.end method
