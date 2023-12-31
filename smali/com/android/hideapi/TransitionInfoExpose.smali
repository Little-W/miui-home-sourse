.class public Lcom/android/hideapi/TransitionInfoExpose;
.super Ljava/lang/Object;
.source "TransitionInfoExpose.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/hideapi/TransitionInfoExpose$RootExpose;,
        Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;
    }
.end annotation


# instance fields
.field private final instance:Landroid/window/TransitionInfo;


# direct methods
.method private constructor <init>(Landroid/window/TransitionInfo;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/hideapi/TransitionInfoExpose;->instance:Landroid/window/TransitionInfo;

    return-void
.end method

.method public static box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;
    .locals 1

    .line 29
    new-instance v0, Lcom/android/hideapi/TransitionInfoExpose;

    invoke-direct {v0, p0}, Lcom/android/hideapi/TransitionInfoExpose;-><init>(Landroid/window/TransitionInfo;)V

    return-object v0
.end method


# virtual methods
.method public findRootIndex(I)I
    .locals 5

    .line 80
    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose;->instance:Landroid/window/TransitionInfo;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "findRootIndex"

    invoke-static {p0, v0, p1, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-string p0, "TransitionInfoExpose"

    const-string p1, "findRootIndex: return null from reflection, use default value 0"

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getChange(Landroid/window/WindowContainerToken;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;
    .locals 5

    .line 33
    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose;->instance:Landroid/window/TransitionInfo;

    const-class v0, Landroid/window/TransitionInfo$Change;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/window/WindowContainerToken;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "getChange"

    invoke-static {p0, v0, p1, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TransitionInfo$Change;

    invoke-static {p0}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object p0

    return-object p0
.end method

.method public getChanges()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose;->instance:Landroid/window/TransitionInfo;

    const-class v1, Ljava/util/List;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "getChanges"

    invoke-static {p0, v1, v4, v3, v2}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 41
    invoke-static {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->box(Landroid/window/TransitionInfo$Change;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "TransitionInfoExpose"

    const-string v1, "getChanges: return null from reflection"

    .line 44
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public getRoot(I)Lcom/android/hideapi/TransitionInfoExpose$RootExpose;
    .locals 5

    .line 90
    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose;->instance:Landroid/window/TransitionInfo;

    const-class v0, Landroid/window/TransitionInfo$Root;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "getRoot"

    invoke-static {p0, v0, p1, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TransitionInfo$Root;

    .line 91
    invoke-static {p0}, Lcom/android/hideapi/TransitionInfoExpose$RootExpose;->box(Landroid/window/TransitionInfo$Root;)Lcom/android/hideapi/TransitionInfoExpose$RootExpose;

    move-result-object p0

    return-object p0
.end method

.method public releaseAllSurfaces()V
    .locals 4

    .line 95
    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose;->instance:Landroid/window/TransitionInfo;

    const-class v0, Landroid/window/TransitionInfo$Root;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "releaseAllSurfaces"

    invoke-static {p0, v0, v3, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->callObjectMethod(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unbox()Landroid/window/TransitionInfo;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/hideapi/TransitionInfoExpose;->instance:Landroid/window/TransitionInfo;

    return-object p0
.end method
