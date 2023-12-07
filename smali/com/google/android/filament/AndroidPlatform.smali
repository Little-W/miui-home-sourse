.class final Lcom/google/android/filament/AndroidPlatform;
.super Lcom/google/android/filament/Platform;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Filament"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/filament/Platform;-><init>()V

    return-void
.end method


# virtual methods
.method getSharedContextNativeHandle(Ljava/lang/Object;)J
    .locals 3

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/filament/AndroidPlatform21;->getSharedContextNativeHandle(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    :try_start_0
    const-class p0, Landroid/opengl/EGLContext;

    const-string v0, "getHandle"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    const-string p1, "Filament"

    const-string v0, "Could not access shared context\'s native handle"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "Filament"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method validateSharedContext(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Landroid/opengl/EGLContext;

    return p0
.end method

.method validateStreamSource(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Landroid/graphics/SurfaceTexture;

    return p0
.end method

.method validateSurface(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Landroid/view/Surface;

    return p0
.end method

.method warn(Ljava/lang/String;)V
    .locals 0

    const-string p0, "Filament"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
