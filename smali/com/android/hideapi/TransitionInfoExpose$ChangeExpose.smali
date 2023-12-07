.class public Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/hideapi/TransitionInfoExpose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeExpose"
.end annotation


# instance fields
.field private final instance:Landroid/window/TransitionInfo$Change;


# direct methods
.method private constructor <init>(Landroid/window/TransitionInfo$Change;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    return-void
.end method

.method public static box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;
    .locals 1

    new-instance v0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    invoke-direct {v0, p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;-><init>(Landroid/window/TransitionInfo$Change;)V

    return-object v0
.end method


# virtual methods
.method public getAllowEnterPip()Z
    .locals 5

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getAllowEnterPip"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "TransitionInfoExpose.ChangeExpose"

    const-string v0, "getAllowEnterPip: return null from reflection, use default value false"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getBackgroundColor()I
    .locals 5

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getBackgroundColor"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "TransitionInfoExpose.ChangeExpose"

    const-string v0, "getBackgroundColor: return null from reflection, use default value 0"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getEndAbsBounds()Landroid/graphics/Rect;
    .locals 4

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    const-class v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getEndAbsBounds"

    invoke-static {p0, v0, v3, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getEndDisplayId()I
    .locals 5

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getEndDisplayId"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "TransitionInfoExpose.ChangeExpose"

    const-string v0, "getEndDisplayId: return null from reflection, use default value 0"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getEndRelOffset()Landroid/graphics/Point;
    .locals 4

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    const-class v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getEndRelOffset"

    invoke-static {p0, v0, v3, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    return-object p0
.end method

.method public getEndRotation()I
    .locals 5

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getEndRotation"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "TransitionInfoExpose.ChangeExpose"

    const-string v0, "getEndRotation: return null from reflection, use default value 0"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getFlags()I
    .locals 5

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getFlags"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "TransitionInfoExpose.ChangeExpose"

    const-string v0, "getFlags: return null from reflection, use default value 0"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getLastParent()Landroid/window/WindowContainerToken;
    .locals 4

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    const-class v0, Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getLastParent"

    invoke-static {p0, v0, v3, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method public getLeash()Landroid/view/SurfaceControl;
    .locals 4

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

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

.method public getMode()I
    .locals 5

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getMode"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "TransitionInfoExpose.ChangeExpose"

    const-string v0, "getMode: return null from reflection, use default value 0"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getParent()Landroid/window/WindowContainerToken;
    .locals 4

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    const-class v0, Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getParent"

    invoke-static {p0, v0, v3, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method public getStartAbsBounds()Landroid/graphics/Rect;
    .locals 4

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    const-class v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getStartAbsBounds"

    invoke-static {p0, v0, v3, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getStartDisplayId()I
    .locals 5

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getStartDisplayId"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "TransitionInfoExpose.ChangeExpose"

    const-string v0, "getStartDisplayId: return null from reflection, use default value 0"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getStartRotation()I
    .locals 5

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getStartRotation"

    invoke-static {p0, v0, v4, v2, v3}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "TransitionInfoExpose.ChangeExpose"

    const-string v0, "getStartRotation: return null from reflection, use default value 0"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    const-class v0, Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "getTaskInfo"

    invoke-static {p0, v0, v3, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public hasFlags(I)Z
    .locals 5

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "hasFlags"

    invoke-static {p0, v0, p1, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "TransitionInfoExpose.ChangeExpose"

    const-string p1, "hasFlags: return null from reflection, use default value false"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public unbox()Landroid/window/TransitionInfo$Change;
    .locals 0

    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->instance:Landroid/window/TransitionInfo$Change;

    return-object p0
.end method
